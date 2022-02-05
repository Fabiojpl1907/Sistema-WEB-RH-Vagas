export class Vaga {
    id: number = 0;
    descricao: string = "";
    foto: string = "";
    req_obrigatorio: string = "";
    req_desejaveis: string = "";
    remuneracao: number = 0;
    local_trabalho: string = "";

    constructor(id:number,descricao:string,foto:string,
        req_obrigatorio:string,req_desejaveis:string,
        remuneracao: number,local_trabalho:string)
        
        {
        this.id = id;
        this.descricao= descricao;
        this.foto = foto;
        this. req_obrigatorio =  req_obrigatorio;
        this. req_desejaveis =  req_desejaveis;
        this.remuneracao = remuneracao;
        this.local_trabalho = local_trabalho;
    }
}
