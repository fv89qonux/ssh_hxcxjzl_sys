package com.my.dzzw.dao;
/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date - 2021年04月25日 22时51分03秒
 */
import com.my.dzzw.utils.Pager;
import com.my.dzzw.base.dao.BaseDao;
import java.util.*;

import com.my.dzzw.model.*;
import com.my.dzzw.dao.*;
import com.my.dzzw.service.*;

/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date 2021年3月24日 下午1:46:33 - 2021年04月25日 22时51分03秒
 */


public interface ZiLiaoDao extends BaseDao<ZiLiao>{
	
	/**
	 * dao分页查询
	 * @param user
	 * @return
	 */
	Pager<ZiLiao> findPager(ZiLiao ziLiao);
}
