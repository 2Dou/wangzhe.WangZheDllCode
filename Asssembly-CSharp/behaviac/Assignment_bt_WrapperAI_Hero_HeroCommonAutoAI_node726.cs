using System;

namespace behaviac
{
	internal class Assignment_bt_WrapperAI_Hero_HeroCommonAutoAI_node726 : Assignment
	{
		protected override EBTStatus update_impl(Agent pAgent, EBTStatus childStatus)
		{
			EBTStatus result = EBTStatus.BT_SUCCESS;
			int value = 480;
			pAgent.SetVariable<int>("p_useSkillWeight", value, 274145469u);
			return result;
		}
	}
}
