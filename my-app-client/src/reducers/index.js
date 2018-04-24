import { combineReducers } from 'redux';
import suppliersReducer from './suppliers'

const rootReducer = combineReducers({
  suppliers: suppliersReducer,
});

export default rootReducer;
