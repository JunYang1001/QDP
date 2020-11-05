using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace QDP.Entity
{
   public  class HighClass
    {
        [Key]
        public Guid hc_ID { get; set; } = Guid.NewGuid();
        //1. 序号 hc_number
        public string MyProhc_numberperty { get; set; }
        //2. 成本科目hc_costaccount →cs_costaccount
        public string hc_costaccount { get; set; }
        //3. 指标描述hc_Indicatordescription
        public string hc_Indicatordescription { get; set; }
        //4. 对应科目编号hc_subjectcode→cs_subjectcode
        public string hc_subjectcode { get; set; }
    }
}
