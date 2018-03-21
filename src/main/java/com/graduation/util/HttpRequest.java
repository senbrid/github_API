package com.graduation.util;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.graduation.model.Developer;
import com.graduation.model.Repository;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class HttpRequest {

    /**
     * 向指定URL发送GET方法的请求
     *
     * @param url   发送请求的URL
     * @param param 请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
     * @return URL 所代表远程资源的响应结果
     */
    public static String sendGet(String url, String param) {
        StringBuilder result = new StringBuilder();
        BufferedReader in = null;
        try {
            StringBuffer urlNameString = new StringBuffer(url);
            if (param != null && param.length() != 0) {
                urlNameString.append("?" + param);
            }
            URL realUrl = new URL(urlNameString.toString());
            // 打开和URL之间的连接
            URLConnection connection = realUrl.openConnection();
            // 设置通用的请求属性
            connection.setRequestProperty("accept", "application/vnd.github.v3+json");
            connection.setRequestProperty("connection", "Keep-Alive");
            connection.setRequestProperty("user-agent",
                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
            // 建立实际的连接
            connection.connect();
            // 获取所有响应头字段
            Map<String, List<String>> map = connection.getHeaderFields();
            // 遍历所有的响应头字段
            for (String key : map.keySet()) {
                System.out.println(key + "--->" + map.get(key));
            }
            // 定义 BufferedReader输入流来读取URL的响应
            in = new BufferedReader(new InputStreamReader(
                    connection.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result.append(line);
            }
        } catch (Exception e) {
            System.out.println("发送GET请求出现异常！" + e);
            e.printStackTrace();
        }
        // 使用finally块来关闭输入流
        finally {
            try {
                if (in != null) {
                    in.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return result.toString();
    }

    /**
     * 向指定 URL 发送POST方法的请求
     *
     * @param url   发送请求的 URL
     * @param param 请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
     * @return 所代表远程资源的响应结果
     */
    public static String sendPost(String url, String param) {
        PrintWriter out = null;
        BufferedReader in = null;
        StringBuilder result = new StringBuilder();
        try {
            URL realUrl = new URL(url);
            // 打开和URL之间的连接
            URLConnection conn = realUrl.openConnection();
            // 设置通用的请求属性
            conn.setRequestProperty("accept", "application/vnd.github.v3+json");
            conn.setRequestProperty("connection", "Keep-Alive");
            conn.setRequestProperty("user-agent",
                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
            // 发送POST请求必须设置如下两行
            conn.setDoOutput(true);
            conn.setDoInput(true);
            // 获取URLConnection对象对应的输出流
            out = new PrintWriter(conn.getOutputStream());
            // 发送请求参数
            out.print(param);
            // flush输出流的缓冲
            out.flush();
            // 定义BufferedReader输入流来读取URL的响应
            in = new BufferedReader(
                    new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result.append(line);
            }
        } catch (Exception e) {
            System.out.println("发送 POST 请求出现异常！" + e);
            e.printStackTrace();
        }
        //使用finally块来关闭输出流、输入流
        finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (in != null) {
                    in.close();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return result.toString();
    }
    /**
     * 字符串转换成JSON数组
     * @param string
     * @return List<JSONObject>
     */
    public static List<JSONObject> stringToJson(String string) {
        if (string.substring(0, 1).equals("{")) {
            string = "[" + string + "]";
        }
        JSONArray jsonArray = JSONArray.parseArray(string);
        List<JSONObject> jsonObjectList = new ArrayList<JSONObject>();
        for (int i = 0; i < jsonArray.size(); i++) {
            if(jsonArray.getJSONObject(i).getString("owner") != null){
                JSONObject object = JSONObject.parseObject(jsonArray.getJSONObject(i).getString("owner"));
                jsonArray.getJSONObject(i).put("owner_login",object.getString("login"));
            }
            jsonObjectList.add(jsonArray.getJSONObject(i));
        }
        return jsonObjectList;
    }

    /**
     * 字符串转换成日期
     * @param UTCString
     * @return date
     */
    public static Date UTCStringtODate(String UTCString) {

        SimpleDateFormat utcFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
        Date date = null;
        try {
            date = utcFormat.parse(UTCString);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
    /**
     * JSON list转换成develop list
     * @param jsonObjectList
     * @return List<Developer>
     */
    public static List<Developer> listJSONObjectToListDeveloper(List<JSONObject> jsonObjectList) {
        List<Developer> developerList = new ArrayList<Developer>();
        for (int i = 0; i < jsonObjectList.size(); i++) {
            Developer developer = new Developer();
            developer.setLogin(jsonObjectList.get(i).getString("login"));
            developer.setId(jsonObjectList.get(i).getLong("id"));
            developer.setName(jsonObjectList.get(i).getString("name"));
            developer.setAvatarUrl(jsonObjectList.get(i).getString("avatar_url"));
            developer.setHtmlUrl(jsonObjectList.get(i).getString("html_url"));
            developer.setFollowersUrl(jsonObjectList.get(i).getString("followers_url"));
            developer.setFollowingUrl(jsonObjectList.get(i).getString("following_url"));
            developer.setStaredUrl(jsonObjectList.get(i).getString("starred_url"));
            developer.setReposUrl(jsonObjectList.get(i).getString("repos_url"));
            developer.setCompany(jsonObjectList.get(i).getString("company"));
            developer.setBlog(jsonObjectList.get(i).getString("blog"));
            developer.setEmail(jsonObjectList.get(i).getString("email"));
            developer.setBio(jsonObjectList.get(i).getString("bio"));
            developer.setPublicRepos(jsonObjectList.get(i).getInteger("public_repos"));
            developer.setFollowers(jsonObjectList.get(i).getInteger("followers"));
            developer.setFollowing(jsonObjectList.get(i).getInteger("following"));
            developer.setCreatedAt(UTCStringtODate(jsonObjectList.get(i).getString("created_at")));
            developer.setUpdatedAt(UTCStringtODate(jsonObjectList.get(i).getString("updated_at")));
            developerList.add(developer);
        }
        return developerList;
    }

    /**
     * JSON list 转换成 Repository list
     * @param jsonObjectList
     * @return List<Developer>
     */
    public static List<Repository> listJSONObjectToListRepository(List<JSONObject> jsonObjectList) {
        List<Repository> repositoryList = new ArrayList<Repository>();
        for (int i = 0; i < jsonObjectList.size(); i++) {
            Repository repository = new Repository();
            repository.setId(jsonObjectList.get(i).getLong("id"));
            repository.setName(jsonObjectList.get(i).getString("name"));
            repository.setFullName(jsonObjectList.get(i).getString("full_name"));
            repository.setHtmlUrl(jsonObjectList.get(i).getString("html_url"));
            repository.setDescription(jsonObjectList.get(i).getString("description"));
            repository.setCreatedAt(UTCStringtODate(jsonObjectList.get(i).getString("created_at")));
            repository.setUpdatedAt(UTCStringtODate(jsonObjectList.get(i).getString("updated_at")));
            repository.setPushedAt(UTCStringtODate(jsonObjectList.get(i).getString("pushed_at")));
            repository.setGitUrl(jsonObjectList.get(i).getString("git_url"));
            repository.setSshUrl(jsonObjectList.get(i).getString("ssh_url"));
            repository.setCloneUrl(jsonObjectList.get(i).getString("clone_url"));
            repository.setSvnUrl(jsonObjectList.get(i).getString("svn_url"));
            repository.setSize(jsonObjectList.get(i).getInteger("size"));
            repository.setStarCount(jsonObjectList.get(i).getInteger("stargazers_count"));
            repository.setWatchersCount(jsonObjectList.get(i).getInteger("watchers_count"));
            repository.setForksCount(jsonObjectList.get(i).getInteger("forks_count"));
            repository.setLanguage(jsonObjectList.get(i).getString("language"));
            repository.setDeveloperid(jsonObjectList.get(i).getString("ownerid"));
            repositoryList.add(repository);
        }
        return repositoryList;
    }
}

