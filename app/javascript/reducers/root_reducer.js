import { combineReducers } from 'redux'
import artistReducer from './reducer'

const rootReducer = combineReducers({
    artist: artistReducer
});

export default rootReducer;
