package com.admin;

import javax.persistence.*;
@Entity
public class  Train
{
	@Id
	int TrainNumber;
	String TrainName;
	String JourneyFrom;
	String JourneyTo;
	int SLPrice;
	int SL;
	int Ac;
	int Acc;
	int Accc;
	String Start;
	String End;
    String TotalTime;
	int AcPrice;
	int AccPrice;
	int AcccPrice;
	public Train() {}
	public Train(int trainNumber, int ac,
			int acc,  int accc,  int acPrice, int accPrice, int acccPrice, String end,String journeyFrom, int sLPrice, int sL,  String start, String journeyTo, String totalTime, String trainName) 
	{
		this.TrainNumber = trainNumber;
		this.TrainName = trainName;
		this.JourneyFrom = journeyFrom;
		this.JourneyTo = journeyTo;
		this.SLPrice = sLPrice;
		this.SL = sL;
		this.Ac = ac;
		this.Acc = acc;
		this.Accc = accc;
		this.Start = start;
		this.End = end;
		this.TotalTime = totalTime;
		this.AcPrice = acPrice;
		this.AccPrice = accPrice;
		this.AcccPrice = acccPrice;
	}
	public int getTrainNumber() 
	{
		return TrainNumber;
	}
	public void setTrainNumber(int trainNumber) 
	{
		TrainNumber = trainNumber;
	}
	public String getTrainName() 
	{
		return TrainName;
	}
	public void setTrainName(String trainName)
	{
		TrainName = trainName;
	}
	public String getJourneyFrom() 
	{
		return JourneyFrom;
	}
	public void setJourneyFrom(String journeyFrom) 
	{
		JourneyFrom = journeyFrom;
	}
	public String getJourneyTo() 
	{
		return JourneyTo;
	}
	public void setJourneyTo(String journeyTo)
	{
		JourneyTo = journeyTo;
	}
	public int getSLPrice()
	{
		return SLPrice;
	}
	public void setSLPrice(int sLPrice) 
	{
		SLPrice = sLPrice;
	}
	public int getSL()
	{
		return SL;
	}
	public void setSL(int sL) 
	{
		SL = sL;
	}
	public int getAc() 
	{
		return Ac;
	}
	public void setAc(int ac)
	{
		Ac = ac;
	}
	public int getAcc() 
	{
		return Acc;
	}
	public void setAcc(int acc) 
	{
		Acc = acc;
	}
	public int getAccc() 
	{
		return Accc;
	}
	public void setAccc(int accc) 
	{
		Accc = accc;
	}
	public String getStart() 
	{
		return Start;
	}
	public void setStart(String start)
	{
		Start = start;
	}
	public String getEnd()
	{
		return End;
	}
	public void setEnd(String end) 
	{
		End = end;
	}
	public String getTotalTime() 
	{
		return TotalTime;
	}
	public void setTotalTime(String totalTime) 
	{
		TotalTime = totalTime;
	}
	public int getAcPrice()
	{
		return AcPrice;
	}
	public void setAcPrice(int acPrice) 
	{
		AcPrice = acPrice;
	}
	public int getAccPrice()
	{
		return AccPrice;
	}
	public void setAccPrice(int accPrice) 
	{
		AccPrice = accPrice;
	}
	public int getAcccPrice()
	{
		return AcccPrice;
	}
	public void setAcccPrice(int acccPrice) 
	{
		AcccPrice = acccPrice;
	}	
}

