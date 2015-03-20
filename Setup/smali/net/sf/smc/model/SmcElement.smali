.class public abstract Lnet/sf/smc/model/SmcElement;
.super Ljava/lang/Object;
.source "SmcElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/smc/model/SmcElement$TransType;
    }
.end annotation


# static fields
.field public static final NIL_STATE:Ljava/lang/String; = "nil"


# instance fields
.field protected final _lineNumber:I

.field protected final _name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    .line 78
    iput p2, p0, Lnet/sf/smc/model/SmcElement;->_lineNumber:I

    .line 79
    return-void
.end method

.method public static merge(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcTransition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcTransition;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Lnet/sf/smc/model/SmcTransition;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "l1":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .local p1, "l2":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Lnet/sf/smc/model/SmcTransition;>;"
    const/4 v7, 0x1

    .line 145
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v5, "retval":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-static {p0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 150
    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 154
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 155
    .local v2, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 156
    .local v3, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcTransition;>;"
    const/4 v0, 0x0

    .line 157
    .local v0, "e1":Lnet/sf/smc/model/SmcTransition;
    const/4 v1, 0x0

    .line 158
    .local v1, "e2":Lnet/sf/smc/model/SmcTransition;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eq v6, v7, :cond_0

    if-eqz v0, :cond_6

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eq v6, v7, :cond_1

    if-eqz v1, :cond_6

    .line 162
    :cond_1
    if-nez v0, :cond_2

    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "e1":Lnet/sf/smc/model/SmcTransition;
    check-cast v0, Lnet/sf/smc/model/SmcTransition;

    .line 166
    .restart local v0    # "e1":Lnet/sf/smc/model/SmcTransition;
    :cond_2
    if-nez v1, :cond_3

    .line 168
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "e2":Lnet/sf/smc/model/SmcTransition;
    check-cast v1, Lnet/sf/smc/model/SmcTransition;

    .line 171
    .restart local v1    # "e2":Lnet/sf/smc/model/SmcTransition;
    :cond_3
    invoke-interface {p2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .local v4, "result":I
    if-gez v4, :cond_4

    .line 173
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_4
    if-lez v4, :cond_5

    .line 178
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const/4 v1, 0x0

    goto :goto_0

    .line 183
    :cond_5
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const/4 v0, 0x0

    .line 185
    const/4 v1, 0x0

    goto :goto_0

    .line 190
    .end local v4    # "result":I
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eq v6, v7, :cond_7

    if-eqz v0, :cond_9

    .line 192
    :cond_7
    if-eqz v0, :cond_8

    .line 194
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_8
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-ne v6, v7, :cond_c

    .line 199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eq v6, v7, :cond_a

    if-eqz v1, :cond_c

    .line 204
    :cond_a
    if-eqz v1, :cond_b

    .line 206
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_b
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-ne v6, v7, :cond_c

    .line 211
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 215
    :cond_c
    return-object v5
.end method


# virtual methods
.method public abstract accept(Lnet/sf/smc/model/SmcVisitor;)V
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lnet/sf/smc/model/SmcElement;->_lineNumber:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    return-object v0
.end method
