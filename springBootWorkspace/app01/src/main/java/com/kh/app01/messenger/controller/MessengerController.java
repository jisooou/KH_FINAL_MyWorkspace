package com.kh.app01.messenger.controller;

import com.kh.app01.messenger.service.MessengerService;
import com.kh.app01.messenger.vo.MessengerVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("messenger")
@RequiredArgsConstructor
public class MessengerController {

    private final MessengerService service;

    //쪽지 화면
    @GetMapping("write")
    public String write(){
        return "messenger/write";
    }

    //쪽지 작성
    @PostMapping("write")
    public String write(MessengerVo vo) {
        int result = service.write(vo);
        if (result > 0) {
            return "redirect:/messenger/all";
        } else {
            return "redirect:/messenger/write";
        }
    }

    //전체 쪽지 화면
    @GetMapping("all")
    public String getMessengerList(Model model) {
        List<MessengerVo> voList = service.getMessengerList();
        model.addAttribute("voList", voList);
        return "messenger/all";  // all.jsp로 포워딩
    }

    //임시저장 쪽지 화면
    @GetMapping("saved")
    public String saved(){
        return "messenger/saved";
    }


}
