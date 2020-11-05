using System;
using System.ComponentModel.DataAnnotations;

namespace QDP.Entity
{
    public class Project
	{
    
        [Key]
        public Guid p_ID { get; set; } = Guid.NewGuid();
        //1. 项目名称p_name
        public string p_name { get; set; }
        //2. 业态类型p_type
        public string p_type { get; set; }
        //3. 开工日期p_starttime
        public string p_starttime { get; set; }
        //4. 结束日期p_endtime
        public string p_endtime { get; set; }
        //5. 项目概况p_overtime
        public string p_overtime { get; set; }
        //6. 总建筑面积（m2） p_totalarea
        public string p_totalarea { get; set; }
        //7. 高层建筑面积（m2）p_highclassarea
        public string p_highclassarea { get; set; }
        //8. 网点建筑面积（m4） p_brancharea
        public string p_brancharea { get; set; }
        //9. 地下室建筑面积（m2）p_basementarea
        public string p_basementarea { get; set; }
        //10. 占地面积（m2）p_area
        public string p_area { get; set; }
        //11. 容积率面积（m2）p-fararea
        public string p_fararea { get; set; }
        //12. 总户数(户) p_totalhousehold
        public string p_totalhousehold { get; set; }
        //13. 总高度(m) p_totalheight
        public string p_totalheight { get; set; }
        //14. 高层层数 p_highclassnumber
        public string p_highclassnumber { get; set; }
        //15. 高层层高 p_highclassheight
        public string p_highclassheight { get; set; }
        //16. 网点层数 p_branchnumber
        public string p_branchnumber { get; set; }
        //17. 网点层高 p_branchheight
        public string p_branchheight { get; set; }
        //18. 车库层数p_garagenumber
        public string p_garagenumber { get; set; }
        //19. 车库层高p_garageheight
        public string p_garageheight { get; set; }
        //20. 结构形式p_structuretype
        public string p_structuretype { get; set; }
        //21. 基础类型p_basictype
        public string p_basictype { get; set; }
        //22. 地基处理形式P_foundationtreatmenttype
        public string P_foundationtreatmenttype { get; set; }
        //23. 抗震设防烈度p_seismicfortificationintensity
        public string p_seismicfortificationintensity { get; set; }
        //24. 基本风压P_windpressure
        public string p_windpressureame { get; set; }
        //25. 地下车位   （分为人防车位p_airdefenseundergroundparkingspace和非人防车位p_nonairdefenseundergroundparkingspace）
        public string p_airdefenseundergroundparkingspace { get; set; }
        public string p_nonairdefenseundergroundparkingspace { get; set; }
        //26. 机械停车位（分为人防车位p_airdefensemechanicalparkingspace和非人防车位p_Nonairdefensemechanicalparkingspace）
        public string p_airdefensemechanicalparkingspace { get; set; }
        public string p_Nonairdefensemechanicalparkingspace { get; set; }
        //27. 绿化面积（m2） 分为地面p_groundgreenarea和其他p_othergreenarea
        public string p_groundgreenarea { get; set; }
        public string p_othergreenarea { get; set; }
        //28. 园建面积（m2） 分为地面p_constructionareaofgroundgarden和其他p_othergardenconstructionarea
        public string p_constructionareaofgroundgarden { get; set; }
        public string p_othergardenconstructionarea { get; set; }
        //29. 道路面积（m2） 分为地面p_surfaceroadarea和其他p_otherroadarea
        public string p_surfaceroadarea { get; set; }
        public string p_otherroadarea { get; set; }
        //31. 工程类别p_projectcategory
        public string p_projectcategory { get; set; }
        //32. 计价依据p_valuationbasis
        public string p_valuationbasis { get; set; }
        //33. 结算方式p_settlementmethod
        public string p_settlementmethod { get; set; }
        //34. 税金类型p_taxtype
        public string p_taxtype { get; set; }
        //35.措施费是否包干p_ismeasuresfee
        public string p_ismeasuresfee { get; set; }
    }
}
