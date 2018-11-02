package com.service;

import com.bean.LeaveBill;

import java.util.List;

public interface LeaveBillService {
    //查询用户的请假条
    List<LeaveBill>  findleavelist(int userid);
    int add(LeaveBill leaveBill);
    //修改请假条状态
    int updateState(int leaveid, int state);
    LeaveBill findbyleaveid(int lid);
}
