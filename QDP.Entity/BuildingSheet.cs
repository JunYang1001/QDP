using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace QDP.Entity
{
   public  class BuildingSheet
	{
        [Key]
        public Guid bs_ID { get; set; } = Guid.NewGuid();
        //1. 业态/楼座bs_formats
        public string bs_formats { get; set; }
        //2. 建筑面积bs_constructionarea
        public string bs_constructionarea { get; set; }
        //3. 总高度bs_totalheight
        public string bs_totalheight { get; set; }
        //4. 层高bs_floorheight
        public string bs_floorheight { get; set; }
        //5. 户数bs_totalhousehold
        public string bs_totalhousehold { get; set; }
        //6. 户型说明bs_housedescription
        public string bs_housedescription { get; set; }
        //7. 备注bs_remark
        public string bs_remark { get; set; }

    }
}
