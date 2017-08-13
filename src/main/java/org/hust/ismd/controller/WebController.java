package org.hust.ismd.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hust.ismd.entity.*;
import org.hust.ismd.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebController {
	private ArticleService articleService;

	private ColumnsService columnsService;
	
	private PicService picService;
	
	private SectionService sectionService;
	
	private UserService userService;
	
	
	/*  session的使用      */
	private void setSessionSectionList(HttpServletRequest request, List<Section> sectionList){
		request.getSession().setAttribute("sessionSectionList", sectionList);
	}
	
	private List<Section> getSessionSectionList(HttpServletRequest request){
		return (List<Section>)request.getSession().getAttribute("sessionSectionList");
	}
	private void setSessionColumnsList(HttpServletRequest request, List<Columns> columnsList){
		request.getSession().setAttribute("sessionColumnsList", columnsList);
	}
	
	private List<Columns> getSessionColumnsList(HttpServletRequest request){
		return (List<Columns>)request.getSession().getAttribute("sessionColumnsList");
	}
	
	
	/**          session中共享数据的填充            **/
	@RequestMapping(value="sessionPrepare.html")
	public String sessionPrepare(HttpServletRequest request){
		List<Section> sectionList = sectionService.getAll();
		List<Columns> columnsList = columnsService.getAll();
		int size = sectionList.size();
		setSessionSectionList(request, sectionList);
		setSessionColumnsList(request, columnsList);
		request.getSession().setAttribute("size", size);
		return "redirect:/homepage.html";
	}
	
	
	
	
	
	
	//首页展示内容
	@RequestMapping(value = "/homepage.html")
	public ModelAndView homepageDisplay(HttpServletRequest  request){      
		ModelAndView view = new ModelAndView();
		/*Section section = sectionService.get(2);
		view.addObject("section" , section);*/
		List<Section> sections = sectionService.getAll();
		List<Columns> cols = columnsService.getAll();
		view.addObject("sections",sections);
		int size = sections.size();
		List<Article> articles = articleService.getFrontArticles();
		List<Article> notices = articleService.getFrontNotices();
		view.addObject("notices", notices);
		view.addObject("articles",articles);
		view.addObject("size",size);
		view.addObject("cols",cols);
		view.setViewName("homepage");
		return view;
	}
	
	
	/*  导航部分超链接处理  */
	@RequestMapping(value="/section-{sectionId}.html" , method = RequestMethod.GET)
	public ModelAndView UrlSection(@PathVariable Integer sectionId){
		ModelAndView view = new ModelAndView();
		if(sectionId == 1){
			view.setViewName("redirect:/homepage.html");
			return view;
		}
		
		Section section = sectionService.get(sectionId);
		List<Columns> cols = columnsService.getColumnsBySectionId(sectionId);
		view.addObject("section", section);
		view.addObject("cols" , cols);
		
		if(sectionId == 2){
			/*Section section = sectionService.get(sectionId);
			List<Columns> cols = columnsService.getColumnsBySectionId(sectionId);
			view.addObject("section", section);
			view.addObject("cols" , cols);*/
			List<Article> arts = new ArrayList<Article>();
			for(Columns attr:cols){
				if(attr.equals(cols.get(cols.size()-1))){
					break;
				}
				arts.addAll(articleService.getArticlesByColumnsId(attr.getColumnsId()));
			}
			view.addObject("arts",arts);
			view.setViewName("secMembers");
		}
		
		if(sectionId == 3){
			view.setViewName("secReaArea");
		}
		if(sectionId == 4){
			view.setViewName("secReaOut");
		}
		if(sectionId == 5){
			view.setViewName("secCooper");
		}
		if(sectionId == 6){
			List<Article> arts = new ArrayList<Article>();
			for(Columns attr:cols){
				arts.addAll(articleService.getArticlesByColumnsId(attr.getColumnsId()));
			}
			view.addObject("arts",arts);
			view.setViewName("secInstru");
		}
		if(sectionId == 7){
			view.setViewName("secAboUs");
		}
		return view;
	}
	
	@RequestMapping(value="/columns-{columnsId}.html" , method = RequestMethod.GET)
	public ModelAndView UrlColumns(@PathVariable Integer columnsId){
		ModelAndView view = new ModelAndView();
		Columns col = columnsService.get(columnsId);
		Section section = columnsService.get(columnsId).getSection();
		List<Columns> cols = columnsService.getColumnsBySectionId(section.getSectionId());
		List<Article> arts = articleService.getArticlesByColumnsId(columnsId);
		view.addObject("col", col);
		view.addObject("section", section);
		view.addObject("cols", cols);
		view.addObject("arts", arts);
		
		if(columnsId == 5 || columnsId == 6 || columnsId == 7 || columnsId == 8 || columnsId == 9 || columnsId == 10 || columnsId == 21 || columnsId == 24){
			Article singleArt = arts.get(0);
			view.addObject("singleArt",singleArt);
			view.setViewName("singleColumnArt");
		}
		
		if(columnsId == 11 || columnsId == 12 || columnsId == 13 || columnsId == 14  || columnsId == 15 || columnsId == 16){
			view.setViewName("columnArtList");
		}
		if(columnsId == 1 || columnsId == 2 || columnsId == 3 || columnsId == 4 || columnsId == 17 || columnsId == 18 || columnsId == 19 || columnsId == 20 || columnsId == 22){
			view.setViewName("columnPicList");
		}
		
		/*if(columnsId == 1){
			view.setViewName("colTeach");
		}
		if(columnsId == 2){
			view.setViewName("colDoc");
		}
		if(columnsId == 3){
			view.setViewName("colStuOn");
		}
		if(columnsId == 4){
			view.setViewName("colStuOff");
		}*/
		/*if(columnsId == 5){
			view.setViewName("colMemSum");
		}
		if(columnsId == 6){
			view.setViewName("colPCM");
		}
		if(columnsId == 7){
			view.setViewName("colMemristor");
		}
		if(columnsId == 8){
			view.setViewName("colSpinEle");
		}
		if(columnsId == 9){
			view.setViewName("colNanoFlow");
		}
		if(columnsId == 10){
			view.setViewName("colMaterGene");
		}*/
		/*if(columnsId == 11){
			view.setViewName("colPapers");
		}
		if(columnsId == 12){
			view.setViewName("colPatent");
		}
		if(columnsId == 13){
			view.setViewName("colProj");
		}
		if(columnsId == 14){
			view.setViewName("colAward");
		}
		if(columnsId == 15){
			view.setViewName("colCommuni");
		}
		if(columnsId == 16){
			view.setViewName("colCooper");
		}*/
		/*if(columnsId == 17){
			view.setViewName("colMaterProduce");
		}
		if(columnsId == 18){
			view.setViewName("colScanTest");
		}
		if(columnsId == 19){
			view.setViewName("colEleTest");
		}
		if(columnsId == 20){
			view.setViewName("colAnaCompu");
		}*/
		/*if(columnsId == 21){
			view.setViewName("colTeamIntro");
		}*/
		/*if(columnsId == 22){
			view.setViewName("colTeamPhotos");
		}*/
		if(columnsId == 23){
			view.setViewName("colUsedFile");
		}
		/*if(columnsId == 24){
			view.setViewName("colEmployee");
		}*/
		
		
		return view;
	}
	
	
	//展示文章列表里的单篇文章
	@RequestMapping(value="/articleDisplay-{articleId}",method=RequestMethod.GET)
	public ModelAndView articleDisplay(@PathVariable Integer articleId){
		ModelAndView view = new ModelAndView();
		Article art = articleService.get(articleId);
		Section section = columnsService.get(art.getColumnId()).getSection();
		List<Columns> cols = columnsService.getColumnsBySectionId(section.getSectionId());
		
		view.addObject("section", section);
		view.addObject("cols", cols);
		view.addObject("art", art);
		view.setViewName("articleDisplay");
		return view;
	}
	
	@RequestMapping(value="/login.html")
	public String login(){
		return "login";
	}
	
	@RequestMapping(value="/doLogin.html")
	public String doLogin(String userName , String password){
		User user = userService.getUserByUserName(userName);
		if((user != null) && user.getPassword().equals(password)){
			
			return "backStageHomepage";
		}
		
		return "redirect:login";
	}
	
	//文件下载
	@RequestMapping(value = "/download", method = { RequestMethod.GET, RequestMethod.POST })
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
        // TODO Auto-generated method stub  
          
        //获得请求文件名  
    	//request.setCharacterEncoding("gbk");
        String filename = request.getParameter("fileName");  
        System.out.println(filename);  
          
        //设置文件MIME类型  
        response.setContentType(request.getSession().getServletContext().getMimeType(filename));  
        //设置Content-Disposition  
        response.setHeader("Content-Disposition", "attachment;filename="+filename);  
        //读取目标文件，通过response将目标文件写到客户端  
        //获取目标文件的绝对路径  
        String fullFileName = request.getSession().getServletContext().getRealPath("/images/" + filename);  
        //System.out.println(fullFileName);  
        //读取文件  
        InputStream in = new FileInputStream(fullFileName);  
        OutputStream out = response.getOutputStream();  
          
        //写文件  
        int b;  
        while((b=in.read())!= -1)  
        {  
            out.write(b);  
        }  
          
        in.close();  
        out.close();  
    }
	
	
	//文件上传
	@RequestMapping(value="/upload",method=RequestMethod.POST)
    public String saveFile(Model model,@RequestParam(value="files", required=true) MultipartFile[] files,HttpServletRequest request) throws Exception{
 
        //文件存放的位置
        String path=request.getSession().getServletContext().getRealPath("/images");
        System.out.println(path);
        String ret="";
        for (MultipartFile file : files) {
            //保存文件
            File tempFile=new File(path, file.getOriginalFilename());
            if(!file.isEmpty()){
            	file.transferTo(tempFile);
            	
            }
            ret+="<img src='../images/"+file.getOriginalFilename()+"' width='300' />";
        }
        model.addAttribute("images", ret); 
        return "main"; 
    }
	
	//展示某一团队新闻或通知公告的具体内容
	@RequestMapping(value="/newsAndNotice-{articleId}",method=RequestMethod.GET)
	public ModelAndView newsAndNoticeDisplay(@PathVariable Integer articleId){
		ModelAndView view = new ModelAndView();
		Article art = articleService.get(articleId);
		
		view.addObject("art", art);
		view.setViewName("newsAndNoticeDisplay");
		return view;
	}
	
	//展示团队新闻或通知公告列表
	@RequestMapping(value="/newsAndNoticeList-{columnsId}",method=RequestMethod.GET)
	public ModelAndView newsAndNoticeList(@PathVariable Integer columnsId){
		ModelAndView view = new ModelAndView();
		List<Article> arts = articleService.getArticlesByColumnsId(columnsId);
		String title = "";
		if(columnsId == 25){
			title = "团队新闻";
		}
		if(columnsId == 26){
			title = "通知公告";
		}
		view.addObject("title", title);
		view.addObject("arts", arts);
		view.setViewName("newsAndNoticeList");
		return view;
	}
	
	
	
	
	/*后台请求处理begin*/
	@RequestMapping(value="/bankuaiColumns-{columnsId}",method=RequestMethod.GET)
	public ModelAndView bankuaiColumns(@PathVariable Integer columnsId){
		ModelAndView view = new ModelAndView();
		List<Article> arts = articleService.getArticlesByColumnsId(columnsId);
		Columns col = columnsService.get(columnsId);
		Section section = col.getSection();
		view.addObject("col", col);
		view.addObject("section", section);
		view.addObject("arts", arts);
		view.setViewName("bankuaiColumns");
		return view;
	}
	
	@RequestMapping(value="/articleUpdate-{articleId}",method=RequestMethod.GET)
	public ModelAndView articleUpdate(@PathVariable Integer articleId){
		ModelAndView view = new ModelAndView();
		view.addObject("article", articleService.get(articleId));
		view.setViewName("updateArticle");
		return view;
	}
	
	@RequestMapping(value="/doArticleUpdate.html")
	public String doArticleUpdate(HttpServletRequest request){
		ModelAndView view = new ModelAndView();
		int id = Integer.parseInt(request.getParameter("id"));
		Article article = articleService.get(id);
		article.setArticleTitle(request.getParameter("title"));
		article.setArticleText(request.getParameter("container"));
		articleService.update(article);
		return "redirect:/bankuaiColumns-"+article.getColumnId()+".html";
		
		
	}
	/*后台请求处理end*/
	


	public ArticleService getArticleService() {
		return articleService;
	}

	@Autowired
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}


	public ColumnsService getColumnsService() {
		return columnsService;
	}

	@Autowired
	public void setColumnsService(ColumnsService columnsService) {
		this.columnsService = columnsService;
	}


	public PicService getPicService() {
		return picService;
	}

	@Autowired
	public void setPicService(PicService picService) {
		this.picService = picService;
	}


	public SectionService getSectionService() {
		return sectionService;
	}

	@Autowired
	public void setSectionService(SectionService sectionService) {
		this.sectionService = sectionService;
	}

	
	public UserService getUserService() {
		return userService;
	}

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
}
