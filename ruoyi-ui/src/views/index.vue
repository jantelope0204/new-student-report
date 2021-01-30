<template>
  <div>
    <!--    布局首页-->
    <el-row :gutter="20">
      <el-col :span="8">
        <el-card shadow="hover" class="mgb20" style="height:252px;">
          <div class="user-info">
            <!--            配置左上角的用户数据信息-->
            <img src="../assets/images/profile.jpg" class="user-avator" alt />
            <div class="user-info-cont">
              <div class="user-info-name">欢迎您,{{userName||getName}}</div>
              <div>角色:{{roles||getRoles}}</div>
            </div>
          </div>
          <div class="user-info-list">
           <span>当前时间:{{realTime}}</span>
          </div>

        </el-card>
        <!--        侧边栏-->
        <el-card shadow="hover" style="height:252px;">
          <div slot="header" class="clearfix">
            <span>校园直通车</span>
          </div>
          <div>
            <i class="el-icon-s-home el-style"></i><a href="http://www.zit.edu.cn/">校园官网</a>
          </div>
          <div>
            <i class="el-icon-reading el-style"></i><a href="http://www.zit.edu.cn/xygk/xyjj.htm">校园简介</a>
          </div>
          <div>
            <i class="el-icon-s-platform el-style"></i><a href="http://jwc.zit.edu.cn/">教务在线</a>
          </div>
          <div>
            <i class="el-icon-share el-style"></i><a href="http://www.zit.edu.cn/zzjg.htm">组织架构</a>
          </div>
          <div>
            <i class="el-icon-user-solid el-style"></i><a href="zkyxzxx@163.com">在校学生</a>
          </div>
          <div>
            <i class="el-icon-map-location el-style"></i><a href="http://www.zit.edu.cn/xysh/bcxx.htm">校车路线</a>
          </div>
        </el-card>
      </el-col>
      <el-col :span="16">
        <el-row :gutter="20" class="mgb20">
          <!--          一行三列数据:用户访问量 系统消息 数量-->
          <el-col :span="8">
            <el-card shadow="hover" :body-style="{padding: '0px'}">
              <div class="grid-content grid-con-1">
                <!--                存放数量-->
                <i class="el-icon-collection grid-con-icon"></i>
                <div class="grid-cont-right">
                  <div class="grid-num">{{countTotal}}</div>
                  <div>录取人数</div>
                </div>
              </div>
            </el-card>
          </el-col>
          <el-col :span="8">
            <el-card shadow="hover" :body-style="{padding: '0px'}">
              <div class="grid-content grid-con-2">
                <!--                存放数量-->
                <i class="el-icon-s-promotion grid-con-icon"></i>
                <div class="grid-cont-right">
                  <div class="grid-num">{{successNumber}}</div>
                  <div>报到人数</div>
                </div>
              </div>
            </el-card>
          </el-col>
          <el-col :span="8">
            <el-card shadow="hover" :body-style="{padding: '0px'}">
              <div class="grid-content grid-con-3">
                <!--                存放数量-->
                <i class="el-icon-s-custom grid-con-icon"></i>
                <div class="grid-cont-right">
                  <div class="grid-num">{{failNumber}}</div>
                  <div>未报到人数</div>
                </div>
              </div>
            </el-card>
          </el-col>
        </el-row>
        <el-card shadow="hover" style="height:403px;">
          <div slot="header" class="clearfix">
            <span>系统公告</span>
            <el-button style="float: right; padding: 3px 0" type="text" @click="">添加</el-button>
          </div>
          <!--          table 数据列表-->
          <el-table :show-header="false" :data="todoList" style="width:100%;">
            <el-table-column width="40">
              <template slot-scope="scope">
                <el-checkbox v-model="scope.row.status"></el-checkbox>
              </template>
            </el-table-column>
            <el-table-column>
              <template slot-scope="scope">
                <div
                  class="todo-item"
                  :class="{'todo-item-del': scope.row.status}"
                >{{scope.row.title}}</div>
              </template>
            </el-table-column>
            <el-table-column width="60" >
              <template>
                <div @click=""><i class="el-icon-edit"></i>
                  <i class="el-icon-delete"></i></div>
              </template>
            </el-table-column>
          </el-table>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import {getCountNumber} from "@/api/student/info";
export default {
  name: "index",
  data() {
    return {
      // 版本号
      userName:'',
      roles: '',
      date: {},
      timer: 0,
      version: "3.3.0",
      countTotal: 0,
      failNumber: 0,
      successNumber: 0,
      realTime: '',
      todoList: [
        {
          title: '迎新晚会举办事宜',
          status: false
        },
        {
          title: '新生火车站接待安排',
          status: false
        },
        {
          title: '新生校园接待事宜',
          status: false
        },
        {
          title: '新生开学时间通知',
          status: true
        },
        {
          title: '新生开学宿舍物资准备',
          status: true
        }
      ],
    };
  },
  methods: {
    goTarget(href) {
      window.open(href, "_blank");
    },
    getNumber(){
      getCountNumber().then(res=>{
        this.countTotal = res.data.count
        this.failNumber = res.data.fail
        this.successNumber = res.data.success
      })
    },
    dealWithTime (data) {
      let formatDateTime
      let Y = data.getFullYear()
      let M = data.getMonth() + 1
      let D = data.getDate()
      let H = data.getHours()
      let Min = data.getMinutes()
      let S = data.getSeconds()
      let W = data.getDay()
      H = H < 10 ? ('0' + H) : H
      Min = Min < 10 ? ('0' + Min) : Min
      S = S < 10 ? ('0' + S) : S
      switch (W) {
        case 0:
          W = '天'
          break
        case 1:
          W = '一'
          break
        case 2:
          W = '二'
          break
        case 3:
          W = '三'
          break
        case 4:
          W = '四'
          break
        case 5:
          W = '五'
          break
        case 6:
          W = '六'
          break
        default:
          break
      }
      formatDateTime = Y + '年' + M + '月' + D + '日 ' + H + ':' + Min + ':' + S + ' 星期' + W
      return formatDateTime
    }
  },
  computed:{
    getName(){
      this.userName = this.$store.state.user.userName
    },
    getRoles(){
      let r = this.$store.state.user.roles[0];
      switch (r) {
        case 'admin':
          this.roles = '管理员';
          return;
        case 'student':
          this.roles = '学生';
          return;
        case 'teacher':
          this.roles = '老师';
          return;
          default:
            return;
      }
    }
  },
  mounted() {
    // 页面加载完后显示当前时间
    this.realTime = this.dealWithTime(new Date())
    // 定时刷新时间
    let _this = this
    // 定时器
    this.timer = setInterval(function () {
      _this.realTime = _this.dealWithTime(new Date()) // 修改数据date
    }, 1000)

  },
  beforeDestroy() {
    if (this.timer) {
      clearInterval(this.timer); // 在Vue实例销毁前，清除我们的定时器
    }
  },
  created() {
    this.getNumber();
  }
};
</script>

<style scoped lang="scss">
.el-row {
  margin-bottom: 20px;
}

.grid-content {
  display: flex;
  align-items: center;
  height: 100px;
}

.grid-cont-right {
  flex: 1;
  text-align: center;
  font-size: 14px;
  color: #999;
}

.grid-num {
  font-size: 30px;
  font-weight: bold;
}

.grid-con-icon {
  font-size: 50px;
  width: 100px;
  height: 100px;
  text-align: center;
  line-height: 100px;
  color: #fff;
}

.grid-con-1 .grid-con-icon {
  background: rgb(45, 140, 240);
}

.grid-con-1 .grid-num {
  color: rgb(45, 140, 240);
}

.grid-con-2 .grid-con-icon {
  background: rgb(100, 213, 114);
}

.grid-con-2 .grid-num {
  color: rgb(45, 140, 240);
}

.grid-con-3 .grid-con-icon {
  background: rgb(242, 94, 67);
}

.grid-con-3 .grid-num {
  color: rgb(242, 94, 67);
}

.user-info {
  display: flex;
  align-items: center;
  padding-bottom: 20px;
  border-bottom: 2px solid #ccc;
  margin-bottom: 20px;
}

.user-avator {
  width: 120px;
  height: 120px;
  border-radius: 50%;
}

.user-info-cont {
  padding-left: 50px;
  flex: 1;
  font-size: 14px;
  color: #999;
}

.user-info-cont div:first-child {
  font-size: 30px;
  color: #222;
}

.user-info-list {
  font-size: 14px;
  color: #999;
  line-height: 25px;
}

.user-info-list span {
  margin-left: 70px;
}

.mgb20 {
  margin-bottom: 20px;
}

.todo-item {
  font-size: 14px;
}

.todo-item-del {
  text-decoration: line-through;
  color: #999;
}
.el-style{
  margin-right: 15px;
  color: #010239;
}

</style>

