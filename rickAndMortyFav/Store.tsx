import React from 'react'
import { View, Text } from 'react-native'
import { IAction, IState } from './interfaces'

const initialState: IState = {
    episodes: [],
    favourites: []
}

export const Store = React.createContext<IState | any>(initialState)

//array.reduce(sum, 0)
function reducer(state: IState, action: IAction): IState {
    switch (action.type) {
        case 'FETCH_DATA':
            return { ...state, episodes: action.payload}
        case 'ADD_FAV':
            return { ...state, favourites: [...state.favourites, action.payload]}
        case 'REMOVE_FAV':
            return { ...state, favourites: action.payload }
        default:
            return state
    }
}

export function StoreProvider(props: any): JSX.Element { // function to provide store on all application to access the store
    const [state, dispatch] = React.useReducer(reducer, initialState)
    return <Store.Provider value={{state, dispatch}}>{props.children}</Store.Provider>
}
