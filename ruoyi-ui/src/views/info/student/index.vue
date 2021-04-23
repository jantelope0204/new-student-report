<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="学生姓名" prop="stuName">
        <el-input
          v-model="queryParams.stuName"
          placeholder="请输入学生姓名"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="学院ID" prop="stuDept">
        <el-input
          v-model="queryParams.stuDept"
          placeholder="请输入学院ID"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="专业代码" prop="stuMajor">
        <el-input
          v-model="queryParams.stuMajor"
          placeholder="请输入专业代码"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="政治面貌" prop="stuPoliticalStatus">
        <el-select v-model="queryParams.stuPoliticalStatus" placeholder="请选择政治面貌" clearable size="small">
          <el-option label="群众" value="群众" />
          <el-option label="团员" value="团员" />
          <el-option label="党员" value="党员" />
        </el-select>
      </el-form-item>
      <el-form-item label="报到状态" prop="stuStatus">
        <el-select v-model="queryParams.stuStatus" placeholder="请选择报到状态" clearable size="small">
          <el-option label="已报到" value="1" />
          <el-option label="未报到" value="0" />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>
    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAddMonica"
          v-hasPermi="['student:info:add']"
        >批量新增(模拟)</el-button>




        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['student:info:add']"
        >新增</el-button>

      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['student:info:remove']"
        >删除</el-button>
      </el-col>

      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['student:info:edit']"
        >修改</el-button>
      </el-col>

      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['student:info:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>
    <el-table v-loading="loading" :data="infoList" border @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="学号" align="center" prop="stuId" fixed='left' min-width="150px"/>
      <el-table-column label="学生姓名" align="center" prop="stuName" />
      <el-table-column label="性别" align="center" prop="stuSex">
        <template slot-scope="scope">
          <span>{{scope.row.stuSex == 1?'男':'女'}}</span>
        </template>
      </el-table-column>
      <el-table-column label="年龄" align="center" prop="stuAge" />
      <el-table-column label="身份证" align="center" prop="stuCode" min-width="150px" />
      <el-table-column label="高考成绩" align="center" prop="stuScore" />
      <el-table-column label="学院ID" align="center" prop="stuDept" />
      <el-table-column label="专业代码" align="center" prop="stuMajor" />
      <el-table-column label="籍贯" align="center" prop="stuNative" />
      <el-table-column label="民族" align="center" prop="stuFolk" />
      <el-table-column label="政治面貌" align="center" prop="stuPoliticalStatus" />
      <el-table-column label="联系电话" align="center" prop="stuPhone" min-width="130px"/>
      <el-table-column label="QQ号" align="center" prop="stuQq" min-width="130px" />
      <el-table-column label="邮箱" align="center" prop="stuEmail" min-width="240px" />
      <el-table-column label="报到状态" fixed="right" align="center" prop="stuStatus" >
        <template slot-scope="scope">
          <span>{{scope.row.stuStatus == 1?'报到':'未报到'}}</span>
        </template>
      </el-table-column>

      <el-table-column label="宿舍状态" fixed="right" align="center" prop="roomId" >
        <template slot-scope="scope">
          <span>{{scope.row.roomId == null?'未分配':'已分配'}}</span>
        </template>
      </el-table-column>

    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />
    <!-- 添加或修改studentInfo对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="学生姓名" prop="stuName">
          <el-input v-model="form.stuName" placeholder="请输入学生姓名" />
        </el-form-item>
        <el-form-item label="性别" prop="stuSex">
          <el-select v-model="form.stuSex" placeholder="请选择性别">
            <el-option label="男" value="1" />
            <el-option label="女" value="0" />
          </el-select>
        </el-form-item>
        <el-form-item label="年龄" prop="stuAge">
          <el-input v-model="form.stuAge" placeholder="请输入年龄" />
        </el-form-item>
        <el-form-item label="身份证" prop="stuCode">
          <el-input v-model="form.stuCode" placeholder="请输入身份证" />
        </el-form-item>
        <el-form-item label="高考成绩" prop="stuScore">
          <el-input v-model="form.stuScore" placeholder="请输入高考成绩" />
        </el-form-item>
        <el-form-item label="学院编号" prop="stuDept">
          <el-input v-model="form.stuDept" placeholder="请输入学院编号" />
        </el-form-item>
        <el-form-item label="专业代码" prop="stuMajor">
          <el-input v-model="form.stuMajor" placeholder="请输入专业代码" />
        </el-form-item>
        <el-form-item label="籍贯" prop="stuNative">
          <el-input v-model="form.stuNative" placeholder="请输入籍贯" />
        </el-form-item>
        <el-form-item label="民族" prop="stuFolk">
          <el-input v-model="form.stuFolk" placeholder="请输入民族" />
        </el-form-item>
        <el-form-item label="政治面貌">
          <el-select v-model="form.stuPoliticalStatus">
            <el-option label="群众" value="群众">群众</el-option>
            <el-option label="团员" value="团员">团员</el-option>
            <el-option label="党员" value="党员">党员</el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="联系电话" prop="stuPhone">
          <el-input v-model="form.stuPhone" placeholder="请输入联系电话" />
        </el-form-item>
        <el-form-item label="联系电话" prop="stuPhone">
          <el-input v-model="form.stuPhone" placeholder="请输入联系电话" />
        </el-form-item>
        <el-form-item label="邮箱" prop="stuQq">
          <el-input v-model="form.stuEmail" placeholder="请输入邮箱" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>

  </div>



</template>

<script>
import { listInfo, getInfo, delInfo, addInfo, updateInfo, exportInfo,addInfoOne } from "@/api/student/info";

export default {
  name: "Info",
  components: {
  },
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // studentInfo表格数据
      infoList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        stuName: null,
        stuSex: null,
        stuAge: null,
        stuCode: null,
        stuScore: null,
        stuDept: null,
        stuMajor: null,
        stuNative: null,
        stuFolk: null,
        stuPoliticalStatus: null,
        stuPhone: null,
        stuStatus: null,
        stuQq: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        stuName: [
          { required: true, message: "学生姓名不能为空", trigger: "blur" }
        ],
        stuSex: [
          { required: true, message: "性别不能为空", trigger: "change" }
        ],
        stuAge: [
          { required: true, message: "年龄不能为空", trigger: "blur" }
        ],
        stuCode: [
          { required: true, message: "身份证不能为空", trigger: "blur" }
        ],
        stuScore: [
          { required: true, message: "高考成绩不能为空", trigger: "blur" }
        ],
        stuDept: [
          { required: true, message: "学院编号不能为空", trigger: "blur" }
        ],
        stuPoliticalStatus: [
          { required: true, message: "政治面貌不能为空", trigger: "blur" }
        ],
        stuMajor: [
          { required: true, message: "专业代码不能为空", trigger: "blur" }
        ],
        stuNative: [
          { required: true, message: "籍贯不能为空", trigger: "blur" }
        ],
        stuFolk: [
          { required: true, message: "民族不能为空", trigger: "blur" }
        ],
        stuPhone: [
          { required: true, message: "联系电话不能为空", trigger: "blur" }
        ],
        stuQq: [
          { required: true, message: "QQ号不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询studentInfo列表 */
    getList() {
      this.loading = true;
      listInfo(this.queryParams).then(response => {
        this.infoList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        stuId: null,
        stuName: null,
        stuSex: null,
        stuAge: null,
        stuCode: null,
        stuScore: null,
        stuDept: null,
        stuMajor: null,
        stuNative: null,
        stuFolk: null,
        stuPoliticalStatus: null,
        stuPhone: null,
        stuStatus: 0,
        stuQq: null,
        stuEmail:null,
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.stuId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAddMonica() {
      this.loading = true;
      addInfo(this.form).then(response => {
        this.msgSuccess("新增成功");
        this.open = false;
        this.getList();
        this.loading = false;
      });
    },
    handleAdd(){
      this.reset();
      this.open = true;
    },


    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const stuId = row.stuId || this.ids
      getInfo(stuId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改学生信息";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.stuId != null) {
            updateInfo(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addInfoOne(this.form).then(response => {
              this.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const stuIds = row.stuId || this.ids;
      this.$confirm('是否确认删除studentInfo编号为"' + stuIds + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delInfo(stuIds);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        })
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有studentInfo数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportInfo(queryParams);
        }).then(response => {
          this.download(response.msg);
        })
    }
  }
};
</script>
