package org.bookManageSystem.business.bookAnalyse.service;

import org.bookManageSystem.business.bookAnalyse.entity.BookCluster;
import org.bookManageSystem.business.bookAnalyse.entity.ReaderRule;
import org.bookManageSystem.business.bookAnalyse.entity.SubBook;
import org.bookManageSystem.business.bookAnalyse.mapper.BookAnalyseMapper;
import org.bookManageSystem.business.bookAnalyse.mapper.BookClusterMapper;
import org.bookManageSystem.business.bookAnalyse.mapper.ReaderRuleMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: yangyang
 * Date: 15-1-1
 * Time: 下午8:20
 * To change this template use File | Settings | File Templates.
 */
public class BookAnalyseService {
    @Autowired
    private BookAnalyseMapper bookAnalyseMapper;
    @Autowired
    private BookClusterMapper bookClusterMapper;
    @Autowired
    private ReaderRuleMapper readerRuleMapper;

    public List<SubBook> getListByAppId(long appId) {
        return bookAnalyseMapper.getSubBookList(appId);
    }

    public void addToBookCluster(List<SubBook>[] lists) {
        for (int i=0; i<lists.length; i++) {
            BookCluster bookCluster = new BookCluster();
            String tempStr = "";
            List<SubBook> l = lists[i];
            for (SubBook b : l) {
                tempStr += b.getNumber() + ";";
            }
//            System.out.println(tempStr);
            bookCluster.setAppId(1);
            bookCluster.setClusterName("聚类" + i);
            bookCluster.setBookNumbers(tempStr);
            bookClusterMapper.add(bookCluster);
        }
    }

    public List<Map<String,String>> getReaderBookByAppId(long appId) {
        return bookAnalyseMapper.getReaderBookByAppId(appId);
    }

    public void addToReaderRule(ReaderRule readerRule) {
        readerRuleMapper.add(readerRule);
    }

    public List<Map<String,String>> getReaderRuleByReaderId(long readerId,long appId) {
        return readerRuleMapper.getRulesByReaderId(readerId, appId);
    }

    public List<Map<String,String>> getClusterByAppId(long appId) {
        return bookClusterMapper.getClusterByAppId(appId);
    }
}
