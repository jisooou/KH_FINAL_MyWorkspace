package com.kh.app01.messenger.dao;

import com.kh.app01.messenger.mapper.MessengerMapper;
import com.kh.app01.messenger.vo.MessengerVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class MessengerDao {

    private final MessengerMapper mapper;

    public int write(MessengerVo vo) {
        return mapper.write(vo);
    }

    public List<MessengerVo> getMessengerList() {
        return mapper.getMessengerList();
    }
}
