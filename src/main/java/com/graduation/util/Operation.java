package com.graduation.util;

import com.alibaba.fastjson.JSONObject;
import com.graduation.model.*;
import com.graduation.service.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class Operation {

    @Autowired
    private RepositoryService repositoryService;
    @Autowired
    private DeveloperService developerService;
    @Autowired
    private BranchService branchService;
    @Autowired
    private ContributorService contributorService;
    @Autowired
    private LanguageService languageService;
    @Autowired
    private StarService starService;
    @Autowired
    private ForkService forkService;
    @Autowired
    private FollowService followService;
    @Autowired
    private SeedService seedService;

    private Logger logger = LoggerFactory.getLogger(Operation.class);

    /**
     *  添加项目信息
     * @param login
     */
    public void addRepository(String login){
        logger.info("----------add repository login: " + login);
        //获取用户的仓库
        int count = 0;
        List<JSONObject> firstJsonObjects = JSONParse.stringToJson(URLRequest.sendGet(URLBuilder.urlDeveAllReposBuilder(login)));
        List<Repository> repositoryList = JSONParse.listJSONObjectToListRepository(firstJsonObjects);
        if(repositoryList != null && !repositoryList.isEmpty()){
            for (Repository repository : repositoryList) {
                if(repository.getPushedAt() == null){
                    continue;
                }
                //判断该仓库是否符合要求，不符合就跳过
                if (validate(repository)) {
                    //判断表中是否已存在该数据，存在就跳过
                    if (repositoryService.getRepositoryById(repository.getId()) == null) {
                        count += 1;
                        repositoryService.addRepositoryByPO(repository);
                        addBranch(repository);
                        addLanguage(repository);
                        addFork(repository);
                        addStar(repository);
                        addContributor(repository);
                    }
                }
            }
            //获取用户的仓库结束
            if (count > 0) {
                addDeveloper(login);
                follow(login, "followers");
                follow(login, "following");
            }
        }
        logger.info("----------end add repository");
    }

    /**
     *  项目的筛选条件
     * @param repository
     */
    public boolean validate(Repository repository){
        if(repository.getPushedAt().getTime() > (System.currentTimeMillis() - 1000 * 60 * 60 * 24 * 7)){
            if(repository.getStarCount() > 2000){
                return true;
            }
        }
        return false;
    }

    /**
     *  项目分支信息
     * @param repository
     */
    public void addBranch(Repository repository) {
        logger.info("----------add branch fullName: " + repository.getFullName());
        List<JSONObject> firstJsonObjects = JSONParse.stringToJson(URLRequest.sendGet(URLBuilder.urlRepoPoBuilder(repository.getFullName(), "branches")));
        List<Branch> branchList = JSONParse.listJSONObjectToListBranch(firstJsonObjects);
        if(branchList != null && !branchList.isEmpty()){
            for (Branch branch : branchList) {
                branch.setRepositoryid(repository.getId());
                branchService.insertSelective(branch);
            }
        }
        logger.info("----------end add branch");
    }

    /**
     *  项目贡献值
     * @param repository
     */
    public void addContributor(Repository repository) {
        logger.info("----------add contributor fullName: " + repository.getFullName());
        List<JSONObject> firstJsonObjects = JSONParse.stringToJson(URLRequest.sendGet(URLBuilder.urlRepoPoBuilder(repository.getFullName(), "contributors")));
        List<Contributor> contributors = JSONParse.listJSONObjectToListContributor(firstJsonObjects);
        if(contributors != null && !contributors.isEmpty() ) {
            for (Contributor contributor : contributors) {
                contributor.setRepositoryid(repository.getId());
                contributorService.insertSelective(contributor);
                addSeed(contributor.getContributor());
            }
        }
        logger.info("----------end add contributor");
    }

    /**
     *  项目使用的语言
     * @param repository
     */
    public void addLanguage(Repository repository) {
        logger.info("----------add language fullName: " + repository.getFullName());
        List<JSONObject> firstJsonObjects = JSONParse.stringToJson(URLRequest.sendGet(URLBuilder.urlRepoPoBuilder(repository.getFullName(), "languages")));
        List<Language> languageList = JSONParse.listJSONObjectToListLanguage(firstJsonObjects);
        if(languageList != null && !languageList.isEmpty()){
            for (Language language : languageList) {
                language.setRepositoryid(repository.getId());
                languageService.insertSelective(language);
            }
        }
        logger.info("----------end add language");
    }

    /**
     *  存储项目的star信息
     * @param repository
     */
    public void addStar(Repository repository) {
        logger.info("----------add star fullName: " + repository.getFullName());
        List<JSONObject> firstJsonObjects = JSONParse.stringToJson(URLRequest.sendGet(URLBuilder.urlRepoPoBuilder(repository.getFullName(), "stargazers")));
        List<Star> starList = JSONParse.listJSONObjectToListStar(firstJsonObjects);
        if(starList != null && !starList.isEmpty() ){
            for (Star star : starList) {
                star.setRepositoryid(repository.getId());
                starService.insertSelective(star);
                addSeed(star.getStarlogin());
            }
        }
        logger.info("----------end add star");
    }

    /**
     * 存储项目的fork信息
     * @param repository
     */
    public void addFork(Repository repository) {
        logger.info("----------add fork fullName: " + repository.getFullName());
        List<JSONObject> firstJsonObjects = JSONParse.stringToJson(URLRequest.sendGet(URLBuilder.urlRepoPoBuilder(repository.getFullName(), "forks")));
        List<Fork> forkList = JSONParse.listJSONObjectToListFork(firstJsonObjects);
        if(forkList != null && !forkList.isEmpty()){
            for (Fork fork : forkList) {
                fork.setRepositoryid(repository.getId());
                forkService.insertSelective(fork);
                addSeed(fork.getForklogin());
            }
        }
        logger.info("----------end add fork");
    }

    /**
     * 添加开发者信息
     * @param login
     */
    public void addDeveloper(String login){
        logger.info("----------add developer login: " + login);
        List<JSONObject> jsonObjects_Developer = JSONParse.stringToJson(URLRequest.sendGet(URLBuilder.urlDeveBuilder(login)));
        List<Developer> developerList = JSONParse.listJSONObjectToListDeveloper(jsonObjects_Developer);
        if(developerList != null && !developerList.isEmpty()){
            for (Developer developer : developerList) {
                if (developerService.getDeveloperById(developer.getId()) == null) {
                    developerService.addDeveloperByPO(developer);
                }
            }
        }
        logger.info("----------end add developer");
    }

    /**
     * 添加用户之间关注的关系
     * @param login
     * @param followType
     */
    public void follow(String login, String followType) {
        logger.info("----------add follow login: " + login);
        String firstUrl = URLBuilder.urlFollowBuilder(login, followType);
        String firstResult = URLRequest.sendGet(firstUrl);
        List<JSONObject> firstJsonObjects = JSONParse.stringToJson(firstResult);
        List<Developer> firstDeveloperList = JSONParse.listJSONObjectToListDeveloper(firstJsonObjects);
        if(firstDeveloperList != null && !firstDeveloperList.isEmpty()){
            for (Developer developer : firstDeveloperList) {
                String followers;
                String following;
                //添加种子
                addSeed(developer.getLogin());
                if (followType.equals("followers")) {
                    followers = developer.getLogin();
                    following = login;
                } else {
                    followers = login;
                    following = developer.getLogin();
                }
                FollowExample followExample = new FollowExample();
                FollowExample.Criteria criteria = followExample.createCriteria();
                criteria.andFollowersEqualTo(followers);
                criteria.andFollowingEqualTo(following);
                if (followService.selectByExample(followExample).size() == 0) {
                    Follow follow = new Follow();
                    follow.setFollowers(followers);
                    follow.setFollowing(following);
                    followService.insertSelective(follow);
                }
            }
        }
        logger.info("----------end add follow");
    }

    /**
     * 把当前获取的username存到seed表
     * @param login
     */
    public void addSeed(String login) {
        logger.info("----------add seed login: " + login);
        //检查seed表中是否有该条记录，没有则添加
//        if (seedDao.selectByLogin(login) == null) {
        Seed seed = new Seed();
        seed.setSeedlogin(login);
        seed.setState(1);
        seedService.insertSelective(seed);
//        }
    }

    /**
     * 获取seed
     */
    public Seed getSeed() {
        Seed seed = null;
        try {
            seed = seedService.selectById(63098);
        }catch (Exception e){
            e.printStackTrace();
        }
        return seed;
    }

}
