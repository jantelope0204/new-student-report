import request from '@/utils/request'

// 查询宿舍楼列表
export function listBuilding(query) {
  return request({
    url: '/building/building/list',
    method: 'get',
    params: query
  })
}

// 查询宿舍楼详细
export function getBuilding(buildId) {
  return request({
    url: '/building/building/' + buildId,
    method: 'get'
  })
}

// 新增宿舍楼
export function addBuilding(data) {
  return request({
    url: '/building/building',
    method: 'post',
    data: data
  })
}

// 修改宿舍楼
export function updateBuilding(data) {
  return request({
    url: '/building/building',
    method: 'put',
    data: data
  })
}

// 删除宿舍楼
export function delBuilding(buildId) {
  return request({
    url: '/building/building/' + buildId,
    method: 'delete'
  })
}

// 导出宿舍楼
export function exportBuilding(query) {
  return request({
    url: '/building/building/export',
    method: 'get',
    params: query
  })
}