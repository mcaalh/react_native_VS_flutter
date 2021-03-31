/**
 * ALL Interfaces
 */

export interface ChildProps {
    episode: IEpisode;
}

export interface IState {
    episodes: Array<IEpisode>,
    favourites: Array<any>
}

export interface IAction {
    type: string,
    payload: any
}

export interface IEpisode {
    id: number;
    url: string;
    name: string;
    season: number;
    number: number;
    type: string;
    airdate: string;
    airtime: string;
    airstamp: string;
    runtime:number;
    image:{
        medium: string,
        original: string
    }
    summary: string;
    _links: string;	
    href: string;
}