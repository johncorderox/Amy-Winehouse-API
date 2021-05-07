
import { GET_ARTIST } from '../actions/demo_actions'

function artistReducer(state = [], action)
{
    switch(action.type) {
        case GET_ARTIST:
            return action.artist;

        default:
            return state;
    }
}

export default artistReducer
