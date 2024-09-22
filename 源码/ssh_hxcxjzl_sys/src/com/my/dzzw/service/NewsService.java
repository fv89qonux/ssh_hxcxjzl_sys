package com.my.dzzw.service;

import com.my.dzzw.model.News;
import com.my.dzzw.utils.Pager;
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
public interface NewsService extends BaseService<News>{

	/**
	 * dao层分页查询
	 */
	Pager<News> findPager(News news);

	List<News> select5ByType(int i, String newName);
}
