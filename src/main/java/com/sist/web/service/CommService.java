package com.sist.web.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class CommService {
	public static Logger logger = LoggerFactory.getLogger(CommService.class);

	
// 댓글 새로고침 객체 얻기 예시	
//	public CommRefresh getCommRefresh(long bbsSeq, String CommOrderBy, long CommCurPage) {
//		CommSearch CommSearch = new CommSearch();
//		CommSearch.setBbsSeq(bbsSeq);
//		CommSearch.setCommOrderBy(CommOrderBy);
//
//		long totalCnt = CommListCnt(CommSearch); 
//		Paging CommPaging = null;
//		List<Comm> CommList = null;
//
//		if (totalCnt > 0) {
//			CommPaging = new Paging("/bbs/view", totalCnt, Comm_LIST_COUNT, Comm_PAGE_COUNT, CommCurPage, "CommCurPage");
//			CommSearch.setStartRow(CommPaging.getStartRow());
//			CommSearch.setEndRow(CommPaging.getEndRow());
//			CommList = CommList(CommSearch); 
//		}
//
//		CommRefresh CommRefresh = new CommRefresh();
//		CommRefresh.setCommCurPage(CommCurPage);
//		CommRefresh.setCommOrderBy(CommOrderBy);
//		CommRefresh.setCommPaging(CommPaging);
//		CommRefresh.setCommList(CommList);
//
//		return CommRefresh;
//	}
}