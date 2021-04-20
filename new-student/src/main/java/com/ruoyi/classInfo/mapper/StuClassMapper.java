package com.ruoyi.classInfo.mapper;

import java.util.List;
import com.ruoyi.classInfo.domain.StuClass;

/**
 * classInfoMapper接口
 * 
 * @author zhangxiya
 * @date 2021-04-20
 */
public interface StuClassMapper 
{
    /**
     * 查询classInfo
     * 
     * @param id classInfoID
     * @return classInfo
     */
    public StuClass selectStuClassById(String id);

    /**
     * 查询classInfo列表
     * 
     * @param stuClass classInfo
     * @return classInfo集合
     */
    public List<StuClass> selectStuClassList(StuClass stuClass);

    /**
     * 新增classInfo
     * 
     * @param stuClass classInfo
     * @return 结果
     */
    public int insertStuClass(StuClass stuClass);

    /**
     * 修改classInfo
     * 
     * @param stuClass classInfo
     * @return 结果
     */
    public int updateStuClass(StuClass stuClass);

    /**
     * 删除classInfo
     * 
     * @param id classInfoID
     * @return 结果
     */
    public int deleteStuClassById(String id);

    /**
     * 批量删除classInfo
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteStuClassByIds(String[] ids);
}
