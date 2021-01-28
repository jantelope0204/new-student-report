package com.ruoyi.utils;



import com.ruoyi.common.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.concurrent.TimeUnit;

@Component
public class SequenceUtils {
    @Autowired
    public RedisTemplate<String, ?> redisTemplate;

    /**
     * 获取每日自增序列
     * @param key
     * @param length
     * @return
     */
    public String getSeq(String key, int length){
        //查询 key 是否存在， 不存在返回 1 ，存在的话则自增加1
        Long autoID = redisTemplate.opsForValue().increment(key, 1);
        String value = StringUtils.leftPad(String.valueOf(autoID), length, "0");
        redisTemplate.expire(key, 1, TimeUnit.DAYS);
        return value;
    }
}
