/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date - 2021年04月25日 22时47分57秒
 */
package com.my.dzzw.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.my.dzzw.model.News;
import com.my.dzzw.utils.Pager;
import com.my.dzzw.service.NewsService;
import java.util.*;

import com.my.dzzw.model.*;
import com.my.dzzw.dao.*;
import com.my.dzzw.service.*;

/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date 2021年3月24日 下午1:46:33 - 2021年04月25日 22时47分57秒
 */

@Service("newsServiceImpl")
public class NewsServiceImpl extends BaseServiceImpl<News> implements NewsService{
	 
	@Autowired
	private NewsDao newsDao;
	/**
	 * dao分页查询
	 * @param user
	 * @return
	 */
	@Override
	public Pager<News> findPager(News news) {
		return newsDao.findPager(news);
	}
	@Override
	public List<News> select5ByType(int i, String newName) {
		// TODO Auto-generated method stub
		return newsDao.select5ByType(i,newName);
	}
	

	

}
