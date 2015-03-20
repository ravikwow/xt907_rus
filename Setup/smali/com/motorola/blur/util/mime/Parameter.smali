.class public Lcom/motorola/blur/util/mime/Parameter;
.super Lcom/motorola/blur/util/mime/NameValuePair;
.source "Parameter.java"


# instance fields
.field private mOrder:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/motorola/blur/util/mime/NameValuePair;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/util/mime/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 15
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/blur/util/mime/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    .local v5, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/motorola/blur/util/mime/Parameter;>;>;"
    new-instance v11, Lcom/motorola/blur/util/mime/QuoteTokenizer;

    const-string v13, ";"

    const-string v14, "\""

    invoke-direct {v11, p0, v13, v14}, Lcom/motorola/blur/util/mime/QuoteTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v11, "tokenizer":Lcom/motorola/blur/util/mime/QuoteTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v11}, Lcom/motorola/blur/util/mime/QuoteTokenizer;->next()Ljava/lang/String;

    move-result-object v10

    .local v10, "token":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 57
    invoke-static {v10}, Lcom/motorola/blur/util/mime/MimeCodec;->decodeParameter(Ljava/lang/String;)Lcom/motorola/blur/util/mime/Parameter;

    move-result-object v7

    .line 58
    .local v7, "param":Lcom/motorola/blur/util/mime/Parameter;
    if-eqz v7, :cond_0

    .line 59
    invoke-virtual {v7}, Lcom/motorola/blur/util/mime/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 61
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/blur/util/mime/Parameter;>;"
    if-nez v4, :cond_1

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/blur/util/mime/Parameter;>;"
    const/4 v13, 0x1

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/blur/util/mime/Parameter;>;"
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/blur/util/mime/Parameter;>;"
    .end local v7    # "param":Lcom/motorola/blur/util/mime/Parameter;
    :cond_2
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v13

    const/high16 v14, 0x40000000

    invoke-direct {v8, v13, v14}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 71
    .local v8, "paramMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/motorola/blur/util/mime/Parameter;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/motorola/blur/util/mime/Parameter;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    .restart local v3    # "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 74
    .local v12, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/blur/util/mime/Parameter;>;"
    new-instance v13, Lcom/motorola/blur/util/mime/Parameter$1;

    invoke-direct {v13}, Lcom/motorola/blur/util/mime/Parameter$1;-><init>()V

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/blur/util/mime/Parameter;

    .line 84
    .local v6, "p":Lcom/motorola/blur/util/mime/Parameter;
    invoke-virtual {v6}, Lcom/motorola/blur/util/mime/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 87
    .end local v6    # "p":Lcom/motorola/blur/util/mime/Parameter;
    :cond_3
    new-instance v13, Lcom/motorola/blur/util/mime/Parameter;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v3, v14}, Lcom/motorola/blur/util/mime/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/motorola/blur/util/mime/Parameter;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/blur/util/mime/Parameter;>;"
    :cond_4
    return-object v8
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/motorola/blur/util/mime/Parameter;->mOrder:I

    return v0
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/motorola/blur/util/mime/Parameter;->mOrder:I

    .line 49
    return-void
.end method
