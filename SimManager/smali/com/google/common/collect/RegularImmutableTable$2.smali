.class final Lcom/google/common/collect/RegularImmutableTable$2;
.super Ljava/lang/Object;
.source "RegularImmutableTable.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$columnComparator:Ljava/util/Comparator;

.field final synthetic val$rowComparator:Ljava/util/Comparator;


# virtual methods
.method public compare(Lcom/google/common/collect/Table$Cell;Lcom/google/common/collect/Table$Cell;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;)I"
        }
    .end annotation

    .prologue
    .local p1, "cell1":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    .local p2, "cell2":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    const/4 v1, 0x0

    .line 105
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$2;->val$rowComparator:Ljava/util/Comparator;

    if-nez v2, :cond_0

    move v0, v1

    .line 107
    .local v0, "rowCompare":I
    :goto_0
    if-eqz v0, :cond_1

    .line 110
    .end local v0    # "rowCompare":I
    :goto_1
    return v0

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$2;->val$rowComparator:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 110
    .restart local v0    # "rowCompare":I
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$2;->val$columnComparator:Ljava/util/Comparator;

    if-nez v2, :cond_2

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$2;->val$columnComparator:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 103
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/common/collect/Table$Cell;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableTable$2;->compare(Lcom/google/common/collect/Table$Cell;Lcom/google/common/collect/Table$Cell;)I

    move-result v0

    return v0
.end method
