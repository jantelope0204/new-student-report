package com.ruoyi.utils;


import com.ruoyi.student.domain.StuentInfo;

import java.util.Calendar;
import java.util.Random;

/**
 * 构建学生信息
 */
public class CreateStudent {
    public static final Integer [] DEPT = {103,104,105,106,107,200};
    public static final Integer [] SEXArr = {0,1};
    public static final String NATIVE = "中国";
    public static final Integer number = 0;
    public static final String [] POLITICAL = {"群众","团员","党员"};
    public static final String [] NATION = {"包括蒙古族", "回族", "藏族", "维吾尔族", "苗族", "彝族", "壮族",
            "布依族", "朝鲜族", "满族", "侗族", "瑶族", "白族", "土家族", "哈尼族", "哈萨克族",
            "傣族", "黎族", "傈僳族", "佤族", "畲族", "高山族", "拉祜族", "水族", "东乡族", "纳西族",
            "景颇族", "柯尔克孜族", "土族", "达斡尔族", "仫佬族", "羌族", "布朗族", "撒拉族", "毛南族", "仡佬族", "锡伯族", "阿昌族", "普米族",
            "塔吉克族", "怒族", "乌孜别克族", "俄罗斯族", "鄂温克族", "德昂族", "保安族", "裕固族", "京族",
            "塔塔尔族", "独龙族", "鄂伦春族", "赫哲族", "门巴族", "珞巴族", "基诺族", "汉族"};
    public static final Integer  STATUS = 0;


    //中国移动
    public static final String[] CHINA_MOBILE = {
            "134", "135", "136", "137", "138", "139", "150", "151", "152", "157", "158", "159",
            "182", "183", "184", "187", "188", "178", "147", "172", "198"
    };
    //中国联通
    public static final String[] CHINA_UNICOM = {
            "130", "131", "132", "145", "155", "156", "166", "171", "175", "176", "185", "186", "166"
    };
    //中国电信
    public static final String[] CHINA_TELECOME = {
            "133", "149", "153", "173", "177", "180", "181", "189", "199"
    };

    public static StuentInfo getStudent() {
        StuentInfo stuentInfo = new StuentInfo();
        //身份证
        String code = IdCardGenerator.generate();

        String year = code.split("-")[1];
        String codeNumber = code.split("-")[0];
        stuentInfo.setStuCode(codeNumber);
        //年龄
        stuentInfo.setStuAge(CreateStudent.getAge(year));
        //姓名
        stuentInfo.setStuName(CreateStudent.getName());
        //性别
        stuentInfo.setStuSex(CreateStudent.getSex());
        //成绩
        stuentInfo.setStuScore(CreateStudent.getScore());
        //院系
        Integer dept = CreateStudent.getDept();
        stuentInfo.setStuDept(String.valueOf(dept));
        //专业
        stuentInfo.setStuMajor(CreateStudent.getMajor(dept));
        //国籍
        stuentInfo.setStuNative(CreateStudent.NATIVE);
        //政治面貌
        stuentInfo.setStuPoliticalStatus(CreateStudent.getPolitical());
        //联系电话
        stuentInfo.setStuPhone(Long.valueOf(CreateStudent.createMobile(new Random().nextInt(3))));
        stuentInfo.setStuStatus(0);
        //民族
        stuentInfo.setStuFolk(CreateStudent.getNation());
        //QQ 号
        stuentInfo.setStuQq(Long.valueOf(CreateStudent.getQq()));
        return stuentInfo;
    }
    /**
     * 生成手机号
     *
     * @param op 0 移动 1 联通 2 电信
     */

    /**
     * @description 随机生成学生数据，由这些数据创建学生对象并返回。
     * @return 生成的学生对象
     */

    public static String createMobile(int op) {
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        String mobile01;//手机号前三位
        int temp;
        switch (op) {
            case 0:
                mobile01 = CHINA_MOBILE[random.nextInt(CHINA_MOBILE.length)];
                break;
            case 1:
                mobile01 = CHINA_UNICOM[random.nextInt(CHINA_UNICOM.length)];
                break;
            case 2:
                mobile01 = CHINA_TELECOME[random.nextInt(CHINA_TELECOME.length)];
                break;
            default:
                mobile01 = "op标志位有误！";
                break;
        }
        if (mobile01.length() > 3) {
            return mobile01;
        }
        sb.append(mobile01);
        //生成手机号后8位
        for (int i = 0; i < 8; i++) {
            temp = random.nextInt(10);
            sb.append(temp);
        }
        return sb.toString();
    }


    //高考分数
    public static Integer getScore(){
        return (int) (100 * Math.random()) + 400;
    }

    /**
     * @description 随机生成学生姓名。有20种姓氏；名字长度可能有1-2位，共有6480中组合。共有129600种可能的姓名组合。
     * @return 生成的学生姓名。
     */
    public static String getName() {
        String[] firstNameArray = { "李", "王", "张", "刘", "陈", "杨", "赵", "黄", "周", "吴", "徐", "孙", "胡", "朱", "高", "欧阳",
                "太史", "端木", "上官", "司马" };// 20个姓，其中5个复姓
        String[] lastNameArray = { "伟", "勇", "军", "磊", "涛", "斌", "强", "鹏", "杰", "峰", "超", "波", "辉", "刚", "健", "明", "亮",
                "俊", "飞", "凯", "浩", "华", "平", "鑫", "毅", "林", "洋", "宇", "敏", "宁", "建", "兵", "旭", "雷", "锋", "彬", "龙", "翔",
                "阳", "剑", "静", "敏", "燕", "艳", "丽", "娟", "莉", "芳", "萍", "玲", "娜", "丹", "洁", "红", "颖", "琳", "霞", "婷", "慧",
                "莹", "晶", "华", "倩", "英", "佳", "梅", "雪", "蕾", "琴", "璐", "伟", "云", "蓉", "青", "薇", "欣", "琼", "宁", "平",
                "媛" };// 80个常用于名字的单字
        int firstPos = (int) (20 * Math.random());
        StringBuilder name = new StringBuilder(firstNameArray[firstPos]);
        int lastLen = (int) (2 * Math.random()) + 1;
        for (int i = 0; i < lastLen; i++) {
            int lastPos = (int) (80 * Math.random());
            name.append(lastNameArray[lastPos]);
        }
        return name.toString();
    }

    /**
     * @description 随机生成5~11位的QQ号。
     * @return 生成的QQ号。
     */
    public static String getQq() {
        char[] numArray = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
        int qqLen = new Random().nextInt(7) + 6; // qq号长度可能为5~11位
        StringBuilder qq = new StringBuilder();
        for (int i = 0; i < qqLen; i++) {
            int qqPos = (int) (10 * Math.random());
            qq.append(numArray[qqPos]);
        }
        return qq.toString();
    }

    /**
     * @description 随机生成院系代码。
     * @return 选择的学习方向。
     */
    //获取院系
    public static Integer getDept() {
        int majorPos = new Random().nextInt(6);
        return DEPT[majorPos];
    }
    //获取政治面貌
    public static String getPolitical() {
        return POLITICAL[new Random().nextInt(3)];
    }
    //获取年龄
    public static Integer getAge(String year) {
        Calendar calendar = Calendar.getInstance();
        return calendar.get(Calendar.YEAR) - Integer.valueOf(year);
    }
    //获取专业
    public static String getMajor(Integer dept) {
        //103 土木工程:DLQLGC
         //105 机械工程:JXDZ
         //104 信息工程 : JAVAKF  JSKX
         //106 艺术:YSSJ
         //107 电气:DQGC
         //200 交通:JTGC
        switch (dept) {
            case 103:
                return "DLQLGC";
            case 105:
                return "JXDZ";
            case 104:
                String  [] arr = {"JAVAKF","JSKX"};
                return arr[new Random().nextInt(2)];
            case 106:
                return "YSSJ";
            case 107:
                return "DQGC";
            case 200:
                return "JTGC";
            default:
                return null;
        }
    }
    //获取性别
     public static Integer getSex() {
         return new Random().nextInt(2);
    }
    //获取民族
    public static String getNation() {
        return NATION[new Random().nextInt(NATION.length)];
    }
}
