.class public Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
.super Ljava/lang/Object;
.source "SIMCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/SIMCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimPeopleInfo"
.end annotation


# instance fields
.field public mEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mName:Ljava/lang/String;

.field public mPhones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contain(Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;)Z
    .locals 12
    .param p1, "info"    # Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;

    .prologue
    const/4 v9, 0x0

    .line 305
    if-eqz p1, :cond_0

    iget-object v10, p0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mName:Ljava/lang/String;

    iget-object v11, p1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v9

    .line 308
    :cond_1
    iget-object v10, p0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mPhones:Ljava/util/ArrayList;

    if-nez v10, :cond_2

    iget-object v10, p1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mPhones:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    iget-object v10, p1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 311
    :cond_2
    iget-object v10, p0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mEmails:Ljava/util/ArrayList;

    if-nez v10, :cond_3

    iget-object v10, p1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mEmails:Ljava/util/ArrayList;

    if-eqz v10, :cond_3

    iget-object v10, p1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mEmails:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 315
    :cond_3
    iget-object v10, p1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mPhones:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    .line 316
    iget-object v10, p1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 317
    .local v7, "number":Ljava/lang/String;
    const/4 v4, 0x0

    .line 318
    .local v4, "found":Z
    invoke-static {v7}, Lcom/motorola/simmanager/SMUtils;->extractDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 319
    .local v8, "numberDigits":Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_4

    .line 322
    iget-object v10, p0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    .local v1, "compareNumber":Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/simmanager/SMUtils;->extractDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "compareNumberDigits":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 327
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 328
    const/4 v4, 0x1

    .line 333
    .end local v1    # "compareNumber":Ljava/lang/String;
    .end local v2    # "compareNumberDigits":Ljava/lang/String;
    :cond_6
    if-nez v4, :cond_4

    goto :goto_0

    .line 338
    .end local v4    # "found":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "numberDigits":Ljava/lang/String;
    :cond_7
    iget-object v10, p1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mEmails:Ljava/util/ArrayList;

    if-eqz v10, :cond_b

    .line 339
    iget-object v10, p1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mEmails:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 340
    .local v3, "email":Ljava/lang/String;
    const/4 v4, 0x0

    .line 341
    .restart local v4    # "found":Z
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_8

    .line 344
    iget-object v10, p0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mEmails:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    .local v0, "compareEmail":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 347
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 348
    const/4 v4, 0x1

    .line 353
    .end local v0    # "compareEmail":Ljava/lang/String;
    :cond_a
    if-nez v4, :cond_8

    goto/16 :goto_0

    .line 357
    .end local v3    # "email":Ljava/lang/String;
    .end local v4    # "found":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_b
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 297
    .local v2, "phone":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Number:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 298
    .end local v2    # "phone":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mEmails:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    .local v0, "email":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Email:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 300
    .end local v0    # "email":Ljava/lang/String;
    :cond_1
    return-object v3
.end method
