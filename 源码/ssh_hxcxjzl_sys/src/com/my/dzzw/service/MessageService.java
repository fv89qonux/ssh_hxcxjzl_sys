package com.my.dzzw.service;

import com.my.dzzw.model.Message;
import com.my.dzzw.utils.Pager;
import java.util.*;

import com.my.dzzw.model.*;
import com.my.dzzw.dao.*;
import com.my.dzzw.service.*;

/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date 2021年3月24日 下午1:46:33 - 2021年04月25日 22时47分56秒
 */
public interface MessageService extends BaseService<Message>{

	/**
	 * dao层分页查询
	 */
	Pager<Message> findPager(Message message);
}
