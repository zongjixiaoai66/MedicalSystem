<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"医院公告","menuJump":"列表","tableName":"yiyuangonggao"}],"menu":"医院公告管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"科室信息","menuJump":"列表","tableName":"keshixinxi"}],"menu":"科室信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"医生","menuJump":"列表","tableName":"yisheng"}],"menu":"医生管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"出诊信息","menuJump":"列表","tableName":"chuzhenxinxi"}],"menu":"出诊信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"预约时间段","menuJump":"列表","tableName":"yuyueshijianduan"}],"menu":"预约时间段管理"},{"child":[{"buttons":["查看","修改","删除","导出"],"menu":"预约挂号","menuJump":"列表","tableName":"yuyueguahao"}],"menu":"预约挂号管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"门诊病历","menuJump":"列表","tableName":"menzhenbingli"}],"menu":"门诊病历管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"就诊评价","menuJump":"列表","tableName":"jiuzhenpingjia"}],"menu":"就诊评价管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"医院公告列表","menuJump":"列表","tableName":"yiyuangonggao"}],"menu":"医院公告模块"},{"child":[{"buttons":["查看"],"menu":"科室信息列表","menuJump":"列表","tableName":"keshixinxi"}],"menu":"科室信息模块"},{"child":[{"buttons":["查看","挂号"],"menu":"出诊信息列表","menuJump":"列表","tableName":"chuzhenxinxi"}],"menu":"出诊信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","删除","支付","评价"],"menu":"预约挂号","menuJump":"列表","tableName":"yuyueguahao"}],"menu":"预约挂号管理"},{"child":[{"buttons":["查看"],"menu":"门诊病历","menuJump":"列表","tableName":"menzhenbingli"}],"menu":"门诊病历管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"就诊评价","menuJump":"列表","tableName":"jiuzhenpingjia"}],"menu":"就诊评价管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"医院公告列表","menuJump":"列表","tableName":"yiyuangonggao"}],"menu":"医院公告模块"},{"child":[{"buttons":["查看"],"menu":"科室信息列表","menuJump":"列表","tableName":"keshixinxi"}],"menu":"科室信息模块"},{"child":[{"buttons":["查看","挂号"],"menu":"出诊信息列表","menuJump":"列表","tableName":"chuzhenxinxi"}],"menu":"出诊信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"出诊信息","menuJump":"列表","tableName":"chuzhenxinxi"}],"menu":"出诊信息管理"},{"child":[{"buttons":["查看","审核","病历"],"menu":"预约挂号","menuJump":"列表","tableName":"yuyueguahao"}],"menu":"预约挂号管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"门诊病历","menuJump":"列表","tableName":"menzhenbingli"}],"menu":"门诊病历管理"},{"child":[{"buttons":["查看","审核"],"menu":"就诊评价","menuJump":"列表","tableName":"jiuzhenpingjia"}],"menu":"就诊评价管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"医院公告列表","menuJump":"列表","tableName":"yiyuangonggao"}],"menu":"医院公告模块"},{"child":[{"buttons":["查看"],"menu":"科室信息列表","menuJump":"列表","tableName":"keshixinxi"}],"menu":"科室信息模块"},{"child":[{"buttons":["查看","挂号"],"menu":"出诊信息列表","menuJump":"列表","tableName":"chuzhenxinxi"}],"menu":"出诊信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"医生","tableName":"yisheng"}];

var hasMessage = '';