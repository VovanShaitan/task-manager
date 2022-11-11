import routes from '../routes/index';
import fetchHelper from '../utils/fetchHelper';

export default {
  index(params) {
    const path = routes.apiV1TasksPath();
    return fetchHelper.get(path, params);
  },

  show(id) {
    const path = routes.apiV1TaskPath(id);
    return fetchHelper.get(path);
  },

  update(id, task = {}) {
    const path = routes.apiV1TaskPath(id);
    return fetchHelper.put(path, task);
  },

  create(task = {}) {
    const path = routes.apiV1TaskPath();
    return fetchHelper.post(path, task);
  },

  destroy(id) {
    const path = routes.apiV1TaskPath(id);
    return fetchHelper.delete(path);
  },
};
