using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace QDP.Entity
{
   public class CostSummary
    {
        [Key]
        public Guid cs_ID { get; set; } = Guid.NewGuid();
        //  1. 科目编码cs_subjectcode
        public string cs_subjectcode { get; set; }
        //	2. 成本科目cs_costaccount
        public string cs_costaccount { get; set; }
        //	3. 高层cs_highclass
        public string cs_highclass { get; set; }
        //	4. 车库cs_garage
        public string cs_garage { get; set; }
        //	5. 成本合计cs_totalcost
        public string cs_totalcost { get; set; }
        //  6.单方成本cs_unilateralcost
        public string cs_unilateralcost { get; set; }
    }
}
