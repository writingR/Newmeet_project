package com.xy.nm.mm.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.mm.dao.MeetMemberSessionDao;
import com.xy.nm.mm.domain.MeetMemberInfo;
import com.xy.nm.mm.domain.MeetMemberListData;
import com.xy.nm.mm.domain.SearchParam;

@Service("listService")
public class MeetMemberListService implements MeetMemberManagerService {

	@Autowired
	private SqlSessionTemplate template;

	private MeetMemberSessionDao dao;

	final int MEETMEMBER_CNT_LIST = 10;

	// 모임의 멤버 전체 리스트를 출력
	public List<MeetMemberInfo> getAllList() {

		dao = template.getMapper(MeetMemberSessionDao.class);

		List<MeetMemberInfo> list = dao.selectAllList();

		return list;

	}

	// 모임 멤버 중 특정 멤버를 출력
	public MeetMemberInfo selectByidx(int m_idx, int nidx) {

		dao = template.getMapper(MeetMemberSessionDao.class);

		MeetMemberInfo list = null;

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("m_idx", m_idx);
		params.put("nidx", nidx);

		list = dao.selectByidx(params);

		return list;

	}

	// 특정 모임의 모임 멤버 리스트 출력과 페이징 처리를 함께 하기 위한 코드
	public MeetMemberListData getListData(int m_idx, int currentPageNumber) {

		dao = template.getMapper(MeetMemberSessionDao.class);

		MeetMemberListData listData = new MeetMemberListData();

		// 현재 페이지 번호
		listData.setCurrentPageNumber(currentPageNumber);

		int totalCnt = dao.selectTotalCount(m_idx);

		int totalPageCnt = 0;

		if (totalCnt > 0) {
			totalPageCnt = totalCnt / MEETMEMBER_CNT_LIST;
			if (totalCnt % MEETMEMBER_CNT_LIST > 0) {
				totalPageCnt++;
			}
		}
		listData.setPageTotalCount(totalPageCnt);

		// 구간 검색을 위한 INDEX
		// 1->0, 2->10, 3-> 20, 4->30
		int index = (currentPageNumber - 1) * MEETMEMBER_CNT_LIST;

		// 회원 정보 리스트
		List<MeetMemberInfo> mmList = null;

		Map<String, Object> params = new HashMap<String, Object>();
		/* params.put("m_idx", m_idx); */
		params.put("m_idx", m_idx);
		params.put("index", index);
		params.put("count", MEETMEMBER_CNT_LIST);

		mmList = dao.selectList(params);
		System.out.println("사이즈::::" + totalCnt);
		System.out.println("리스트 사이즈::::" + mmList.size());

		listData.setMmList(mmList);
		for (MeetMemberInfo m : mmList) {
			System.out.println(m);
		}

		int no = totalCnt - index;

		listData.setNo(no);

		listData.setTotalCount(totalCnt);

		return listData;
	}

	// 특정 모임의 특정 유저가 작성한 리뷰 리스트 불러오기
	public MeetMemberListData selectReviewList(int m_idx, int nidx, int currentPageNumber) {

		dao = template.getMapper(MeetMemberSessionDao.class);

		MeetMemberListData listData = new MeetMemberListData();

		// 현재 페이지 번호
		listData.setCurrentPageNumber(currentPageNumber);

		int totalCnt = 0;

		Map<String, Object> params2 = new HashMap<String, Object>();
		params2.put("m_idx", m_idx);
		params2.put("nidx", nidx);

		totalCnt = dao.selectReviewListCount(params2);
		
		System.out.println(totalCnt);

		int totalPageCnt = 0;

		if (totalCnt > 0) {
			totalPageCnt = totalCnt / MEETMEMBER_CNT_LIST;
			if (totalCnt % MEETMEMBER_CNT_LIST > 0) {
				totalPageCnt++;
			}
		}
		listData.setPageTotalCount(totalPageCnt);

		// 구간 검색을 위한 INDEX
		// 1->0, 2->10, 3-> 20, 4->30
		int index = (currentPageNumber - 1) * MEETMEMBER_CNT_LIST;

		// 회원 정보 리스트
		List<MeetMemberInfo> mmList = null;

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("m_idx", m_idx);
		params.put("nidx", nidx);
		params.put("index", index);
		params.put("count", MEETMEMBER_CNT_LIST);

		mmList = dao.selectReviewList(params);
		System.out.println("사이즈::::" + totalCnt);
		System.out.println("리스트 사이즈::::" + mmList.size());

		listData.setMmList(mmList);
		for (MeetMemberInfo m : mmList) {
			System.out.println(m);
		}

		int no = totalCnt - index;

		listData.setNo(no);

		listData.setTotalCount(totalCnt);

		return listData;
	}

	// 특정 모임의 특정 유저가 작성한 리뷰 댓글 목록 불러오기
	public MeetMemberListData selectRcommentList(int m_idx, int nidx, int currentPageNumber) {

		dao = template.getMapper(MeetMemberSessionDao.class);

		MeetMemberListData listData = new MeetMemberListData();

		// 현재 페이지 번호
		listData.setCurrentPageNumber(currentPageNumber);

		int totalCnt = 0;

		Map<String, Object> params2 = new HashMap<String, Object>();
		params2.put("m_idx", m_idx);
		params2.put("nidx", nidx);

		totalCnt = dao.selectReviewListCount(params2);

		int totalPageCnt = 0;

		if (totalCnt > 0) {
			totalPageCnt = totalCnt / MEETMEMBER_CNT_LIST;
			if (totalCnt % MEETMEMBER_CNT_LIST > 0) {
				totalPageCnt++;
			}
		}
		listData.setPageTotalCount(totalPageCnt);

		// 구간 검색을 위한 INDEX
		// 1->0, 2->10, 3-> 20, 4->30
		int index = (currentPageNumber - 1) * MEETMEMBER_CNT_LIST;

		// 회원 정보 리스트
		List<MeetMemberInfo> mmList = null;

		Map<String, Object> params = new HashMap<String, Object>();
		/* params.put("m_idx", m_idx); */
		params.put("m_idx", m_idx);
		params.put("nidx", nidx);
		params.put("index", index);
		params.put("count", MEETMEMBER_CNT_LIST);

		mmList = dao.selectRcommentList(params);
		System.out.println("사이즈::::" + totalCnt);
		System.out.println("리스트 사이즈::::" + mmList.size());

		listData.setMmList(mmList);
		for (MeetMemberInfo m : mmList) {
			System.out.println(m);
		}

		int no = totalCnt - index;

		listData.setNo(no);

		listData.setTotalCount(totalCnt);

		return listData;
	}

	// 특정 모임의 특정 유저가 가입한 모든 모임의 목록 불러오기
	public MeetMemberListData selectMeetingList(int m_idx, int nidx, int currentPageNumber) {

		dao = template.getMapper(MeetMemberSessionDao.class);

		MeetMemberListData listData = new MeetMemberListData();

		// 현재 페이지 번호
		listData.setCurrentPageNumber(currentPageNumber);

		int totalCnt = 0;

		Map<String, Object> params2 = new HashMap<String, Object>();
		params2.put("m_idx", m_idx);
		params2.put("nidx", nidx);

		totalCnt = dao.selectReviewListCount(params2);

		int totalPageCnt = 0;

		if (totalCnt > 0) {
			totalPageCnt = totalCnt / MEETMEMBER_CNT_LIST;
			if (totalCnt % MEETMEMBER_CNT_LIST > 0) {
				totalPageCnt++;
			}
		}
		listData.setPageTotalCount(totalPageCnt);

		// 구간 검색을 위한 INDEX
		// 1->0, 2->10, 3-> 20, 4->30
		int index = (currentPageNumber - 1) * MEETMEMBER_CNT_LIST;

		// 회원 정보 리스트
		List<MeetMemberInfo> mmList = null;

		Map<String, Object> params = new HashMap<String, Object>();
		/* params.put("m_idx", m_idx); */
		params.put("m_idx", m_idx);
		params.put("nidx", nidx);
		params.put("index", index);
		params.put("count", MEETMEMBER_CNT_LIST);

		mmList = dao.selectMeetingList(params);
		System.out.println("사이즈::::" + totalCnt);
		System.out.println("리스트 사이즈::::" + mmList.size());

		listData.setMmList(mmList);
		for (MeetMemberInfo m : mmList) {
			System.out.println(m);
		}

		int no = totalCnt - index;

		listData.setNo(no);

		listData.setTotalCount(totalCnt);

		return listData;
	}

}
