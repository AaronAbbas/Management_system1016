package com.service.impl;

import com.bean.LeaveBill;
import com.dao.LeaveBillDao;
import com.service.LeaveBillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class LeaveBillServiceImpl implements LeaveBillService {
    @Autowired
    private LeaveBillDao leaveBillDao;
    @Override
    public List<LeaveBill> findleavelist(int userid) {
        return leaveBillDao.findleavelist(userid);
    }

    @Override
    public int add(LeaveBill leaveBill) {
        return leaveBillDao.add(leaveBill);
    }

    @Override
    public int updateState(int leaveid, int state) {
        Map map=new HashMap();
        map.put("leaveid",leaveid);
        map.put("state",state);
        return leaveBillDao.updateState(map);
    }

    @Override
    public LeaveBill findbyleaveid(int lid) {
        return leaveBillDao.findbyleaveid(lid);
    }
}
