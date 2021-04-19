import { IAction, IEpisode, IState } from '../models/interfaces';

export const fetchDataAction = async (dispatch: any) => {
    const URL = 'https://api.tvmaze.com/singlesearch/shows?q=rick-&-morty&embed=episodes'
    const data = await fetch(URL)
    const dataJSON = await data.json()
    return dispatch({
        type: 'FETCH_DATA',
        payload: dataJSON._embedded.episodes
    })
}

export const toggleFavAction = (episode: IEpisode, state: IState, dispatch: any): IAction => {
        const episodeInFav = state.favourites.includes(episode)
        if (episodeInFav) {
            const favsWithoutEpisode = state.favourites.filter((fav: IEpisode) => fav.id !== episode.id)
            return dispatch({
                type: 'REMOVE_FAV',
                payload: favsWithoutEpisode
            })
        }

        return dispatch({
            type: 'ADD_FAV',
            payload: episode
        })
    }