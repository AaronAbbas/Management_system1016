package com.dao;

import com.bean.LeaveBill;

import java.util.List;
import java.util.Map;

public interface LeaveBillDao {
    //查询用户的请假条
    List<LeaveBill> findleavelist(int userid);
    int add(LeaveBill leaveBill);
    //修改请假条状态
    int updateState(Map map);
    LeaveBill findbyleaveid(int lid);
}
