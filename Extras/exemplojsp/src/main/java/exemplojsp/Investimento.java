package exemplojsp;

public class Investimento {
	public Float valor_investido;
	public Float taxa;
	public Integer periodo;
	public Double valor_calculado;
	
	
	public void CalcularInvestimento() {
		valor_calculado = valor_investido * Math.pow( 1+taxa, periodo);
	}

}
