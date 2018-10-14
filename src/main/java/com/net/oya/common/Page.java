package com.net.oya.common;

import com.google.common.collect.Lists;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.PageRequest;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
public class Page<T> {
    public static final int DEFAULT_PAGE_SIZE = 10;
 // variable publique - //
    public static final String ASC = "asc";
    public static final String DESC = "desc";

    // - paramètres de pagination - //
    protected int pageNo = 1;
    protected int pageSize = -1;
    protected String orderBy = null;
    protected String order = null;
    protected boolean autoCount = true;

   // retourne le résultat - //
    protected List<T> result = Lists.newArrayList();
    protected long totalCount = -1;

 // constructeur - //
    public Page(int pageNo,int pageSize) {
        this.pageNo = pageNo;
        this.pageSize = pageSize;
    }

    public Page(HttpServletRequest request) {
        int pageNumber = Integer.parseInt(StringUtils.defaultIfBlank(request.getParameter("p"), "1"));
        setPageNo(pageNumber);
        int pageSize = Integer.parseInt(StringUtils.defaultIfBlank(request.getParameter("ps"), String.valueOf(DEFAULT_PAGE_SIZE)));
        setPageSize(pageSize);
    }

 // - fonction d'accès aux paramètres de pagination - //

    /**
     * Obtenir le numéro de page de la page en cours. Le numéro de série commence à 1 et par défaut à 1.
     */
    public int getPageNo() {
        return pageNo;
    }

    /**
     *Définissez le numéro de page de la page en cours. Le numéro de série commence à 1 et est automatiquement ajusté à 1 lorsqu'il est inférieur à 1.
     */
    public void setPageNo(final int pageNo) {
        this.pageNo = pageNo;
        if (pageNo < 1) {
            this.pageNo = 1;
        }
    }

    /**
     *Renvoie la fonction setPageNo de PagePage elle-même, qui peut être utilisée pour une configuration continue.
     */
    public Page<T> pageNo(final int thePageNo) {
        setPageNo(thePageNo);
        return this;
    }

    /**
     * Obtenez le nombre d'enregistrements par page, la valeur par défaut est -1.
     */
    public int getPageSize() {
        return pageSize;
    }

    /**
     * Définissez le nombre d'enregistrements par page.
     */
    public void setPageSize(final int pageSize) {
        this.pageSize = pageSize;
    }

    /**
     * Renvoie la fonction setPageSize de PagePage elle-même, qui peut être utilisée pour une configuration continue.
     */
    public Page<T> pageSize(final int thePageSize) {
        setPageSize(thePageSize);
        return this;
    }

    /**
     *Selon pageNo et pageSize calculer la page actuelle sur le premier enregistrement dans la position totale du jeu de résultats, numéro de série à partir de 1 départ.
     */
    public int getFirst() {
        return ((pageNo - 1) * pageSize) + 1;
    }

    /**
		* Champ de tri, pas de valeur par défaut. Les champs de tri multiples sont séparés par ','.
		*      */
    public String getOrderBy() {
        return orderBy;
    }

    /**
     * Définissez le champ de tri, séparé par plusieurs champs de tri avec ','.     */
    public void setOrderBy(final String orderBy) {
        this.orderBy = orderBy;
    }

    /**
* Renvoie la fonction setOrderBy de l'objet Page lui-même, qui peut être utilisé pour une configuration continue.
*      */
    public Page<T> orderBy(final String theOrderBy) {
        setOrderBy(theOrderBy);
        return this;
    }

    /**
     * Obtenez la direction de tri, pas de valeur par défaut.
     */
    public String getOrder() {
        return order;
    }

    /**
          * Définissez le mode de tri sur.
          *
          * @param order valeur optionnelle desc ou asc, plusieurs champs de tri avec ',' séparés.
          * */
    public void setOrder(final String order) {
        String lowcaseOrder = StringUtils.lowerCase(order);

        //Vérifier la valeur légale de la chaîne de commande
        String[] orders = StringUtils.split(lowcaseOrder, ',');
        for (String orderStr : orders) {
            if (!StringUtils.equals(DESC, orderStr) && !StringUtils.equals(ASC, orderStr)) {
                throw new IllegalArgumentException("排序方向" + orderStr + "不是合法值");
            }
        }

        this.order = lowcaseOrder;
    }

    /**
		* Renvoie la fonction setOrder de l'objet Page lui-même, qui peut être utilisé pour une configuration continue.
		*      */
    public Page<T> order(final String theOrder) {
        setOrder(theOrder);
        return this;
    }

    /**
     *Si le champ de tri a été défini, pas de valeur par défaut.
     */
    public boolean isOrderBySetted() {
        return (StringUtils.isNotBlank(orderBy) && StringUtils.isNotBlank(order));
    }

    /**
     *Obtenir l'objet de requête est le premier à exécuter automatiquement la requête de compte pour obtenir le nombre total d'enregistrements, la valeur par défaut est false.
     */
    public boolean isAutoCount() {
        return autoCount;
    }

    /**
     *Définir l'objet de requête est automatiquement exécuté première requête de comptage pour obtenir le nombre total d'enregistrements.
     */
    public void setAutoCount(final boolean autoCount) {
        this.autoCount = autoCount;
    }

    /**
     *Renvoie la fonction setAutoCount de l'objet Page lui-même, qui peut être utilisé pour une configuration continue.
     */
    public Page<T> autoCount(final boolean theAutoCount) {
        setAutoCount(theAutoCount);
        return this;
    }

 // access query result function - //

    /**
      Obtenez une liste d'enregistrements dans la page.
     */
    public List<T> getResult() {
        return result;
    }

    /**
     *Définir la liste d'enregistrements dans la page.
     */
    public void setResult(final List<T> result) {
        this.result = result;
    }

    /**
     *Obtenez le nombre total d'enregistrements, la valeur par défaut est -1.
     */
    public long getTotalCount() {
        return totalCount;
    }

    /**
     * Définissez le nombre total d'enregistrements.
     */
    public void setTotalCount(final long totalCount) {
        this.totalCount = totalCount;
    }

    /**
     *Le nombre total de pages est calculé sur la base de pageSize et totalCount. La valeur par défaut est -1.
     */
    public long getTotalPages() {
        if (totalCount < 0) {
            return -1;
        }

        long count = totalCount / pageSize;
        if (totalCount % pageSize > 0) {
            count++;
        }
        return count;
    }

    /**
     * S'il y a la page suivante.
     */
    public boolean isHasNext() {
        return (pageNo + 1 <= getTotalPages());
    }

    /**
     * Obtenez le numéro de page de la page suivante, à partir de 1. La page actuelle est la dernière page.
     */
    public int getNextPage() {
        if (isHasNext()) {
            return pageNo + 1;
        } else {
            return pageNo;
        }
    }

    /**
     * S'il y a une page précédente.
     */
    public boolean isHasPre() {
        return (pageNo - 1 >= 1);
    }

    /**
     * Obtenir le numéro de page de la page précédente, à partir de 1. La page actuelle est la page d'accueil.
     */
    public int getPrePage() {
        if (isHasPre()) {
            return pageNo - 1;
        } else {
            return pageNo;
        }
    }

    public PageRequest getPageable(){
        return new PageRequest(getPageNo()-1, getPageSize());
    }
}
