.class public Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
.super Ljava/lang/Object;
.source "RawContactDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/RawContactDelta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValuesDelta"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/RawContactDelta$ValuesDelta;",
            ">;"
        }
    .end annotation
.end field

.field protected static sNextInsertId:I


# instance fields
.field protected mAfter:Landroid/content/ContentValues;

.field protected mBefore:Landroid/content/ContentValues;

.field private mFromTemplate:Z

.field protected mIdColumn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 580
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->sNextInsertId:I

    .line 978
    new-instance v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 582
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 571
    const-string v0, "_id"

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 583
    return-void
.end method

.method private ensureUpdate()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 778
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 780
    :cond_0
    return-void
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .locals 5
    .param p0, "after"    # Landroid/content/ContentValues;

    .prologue
    .line 601
    new-instance v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;-><init>()V

    .line 602
    .local v0, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 603
    iput-object p0, v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 606
    iget-object v1, v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v2, v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    sget v3, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->sNextInsertId:I

    add-int/lit8 v4, v3, -0x1

    sput v4, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->sNextInsertId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 607
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .locals 2
    .param p0, "before"    # Landroid/content/ContentValues;

    .prologue
    .line 590
    new-instance v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;-><init>()V

    .line 591
    .local v0, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    iput-object p0, v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 592
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 593
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .locals 1
    .param p0, "local"    # Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .param p1, "remote"    # Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .prologue
    .line 860
    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isDelete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 873
    .end local p0    # "local":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :goto_0
    return-object p0

    .line 863
    .restart local p0    # "local":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .end local p0    # "local":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;-><init>()V

    .line 865
    .restart local p0    # "local":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 867
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    goto :goto_0

    .line 870
    :cond_3
    iget-object v0, p1, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    goto :goto_0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 4
    .param p1, "targetUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 939
    const/4 v0, 0x0

    .line 940
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isInsert()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 942
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 943
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 944
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 955
    :cond_0
    :goto_0
    return-object v0

    .line 945
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 947
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 949
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 953
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyStringFrom(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/lang/String;)V
    .locals 1
    .param p1, "from"    # Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->ensureUpdate()V

    .line 809
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method public copyStructuredNameFieldsFrom(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)V
    .locals 1
    .param p1, "name"    # Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .prologue
    .line 1051
    const-string v0, "data1"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/lang/String;)V

    .line 1053
    const-string v0, "data2"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/lang/String;)V

    .line 1054
    const-string v0, "data3"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/lang/String;)V

    .line 1055
    const-string v0, "data4"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/lang/String;)V

    .line 1056
    const-string v0, "data5"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/lang/String;)V

    .line 1057
    const-string v0, "data6"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/lang/String;)V

    .line 1059
    const-string v0, "data7"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/lang/String;)V

    .line 1060
    const-string v0, "data8"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/lang/String;)V

    .line 1061
    const-string v0, "data9"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/lang/String;)V

    .line 1063
    const-string v0, "data10"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/lang/String;)V

    .line 1064
    const-string v0, "data11"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/lang/String;)V

    .line 1065
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x0

    return v0
.end method

.method public emailHasType()Z
    .locals 1

    .prologue
    .line 1092
    const-string v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 878
    instance-of v2, p1, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 880
    check-cast v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 881
    .local v0, "other":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->subsetEquals(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->subsetEquals(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 883
    .end local v0    # "other":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_0
    return v1
.end method

.method public getAfter()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getAsByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 636
    :goto_0
    return-object v0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 636
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 660
    .end local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object p2

    .line 657
    .restart local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0
.end method

.method public getAsLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 646
    :goto_0
    return-object v0

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 646
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    :goto_0
    return-object v0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 626
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCompleteValues()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 838
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 839
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 840
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 842
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    .line 843
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 845
    :cond_1
    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 847
    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 850
    :cond_2
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1039
    const-string v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1088
    const-string v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1100
    const-string v0, "data3"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailType()I
    .locals 1

    .prologue
    .line 1096
    const-string v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getGroupRowId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 995
    const-string v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    const-string v0, "mimetype"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1084
    const-string v0, "data3"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNormalizedNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1072
    const-string v0, "data4"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1068
    const-string v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 1080
    const-string v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1027
    const-string v0, "data9"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1035
    const-string v0, "data7"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1031
    const-string v0, "data8"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    .prologue
    .line 1003
    const-string v0, "data15"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public isDelete()Z
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromTemplate()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mFromTemplate:Z

    return v0
.end method

.method public isInsert()Z
    .locals 1

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoop()Z
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 692
    const-string v2, "is_primary"

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 693
    .local v0, "isPrimary":Ljava/lang/Long;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSuperPrimary()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 705
    const-string v2, "is_super_primary"

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 706
    .local v0, "isSuperPrimary":Ljava/lang/Long;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdate()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 738
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->beforeExists()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v4, v5

    .line 752
    :goto_0
    return v4

    .line 741
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 742
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 743
    .local v2, "newValue":Ljava/lang/Object;
    iget-object v6, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 744
    .local v3, "oldValue":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 745
    if-eqz v2, :cond_2

    goto :goto_0

    .line 748
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    :cond_4
    move v4, v5

    .line 752
    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 818
    .local v2, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    .line 819
    iget-object v3, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 820
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 824
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v3, :cond_1

    .line 825
    iget-object v3, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 826
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 830
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public markDeleted()V
    .locals 1

    .prologue
    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 771
    return-void
.end method

.method public phoneHasType()Z
    .locals 1

    .prologue
    .line 1076
    const-string v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 793
    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->ensureUpdate()V

    .line 794
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->ensureUpdate()V

    .line 799
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 800
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->ensureUpdate()V

    .line 784
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->ensureUpdate()V

    .line 789
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 790
    return-void
.end method

.method public putNull(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->ensureUpdate()V

    .line 804
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 972
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 973
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 974
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 976
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1043
    if-nez p1, :cond_0

    .line 1044
    const-string v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 1048
    :goto_0
    return-void

    .line 1046
    :cond_0
    const-string v0, "data1"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFromTemplate(Z)V
    .locals 0
    .param p1, "isFromTemplate"    # Z

    .prologue
    .line 697
    iput-boolean p1, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mFromTemplate:Z

    .line 698
    return-void
.end method

.method public setGroupRowId(J)V
    .locals 1
    .param p1, "groupId"    # J

    .prologue
    .line 991
    const-string v0, "data1"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    .line 992
    return-void
.end method

.method public setIdColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "idColumn"    # Ljava/lang/String;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 689
    return-void
.end method

.method public setPhoneticFamilyName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1015
    const-string v0, "data9"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method public setPhoneticGivenName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1023
    const-string v0, "data7"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method public setPhoneticMiddleName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1019
    const-string v0, "data8"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    return-void
.end method

.method public setPhoto([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 999
    const-string v0, "data15"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 1000
    return-void
.end method

.method public setSuperPrimary(Z)V
    .locals 2
    .param p1, "val"    # Z

    .prologue
    .line 1007
    if-eqz p1, :cond_0

    .line 1008
    const-string v0, "is_super_primary"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 1012
    :goto_0
    return-void

    .line 1010
    :cond_0
    const-string v0, "is_super_primary"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public subsetEquals(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Z
    .locals 6
    .param p1, "other"    # Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .prologue
    const/4 v4, 0x0

    .line 918
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 919
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 920
    .local v2, "ourValue":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 921
    .local v3, "theirValue":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 923
    if-eqz v3, :cond_0

    .line 930
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ourValue":Ljava/lang/String;
    .end local v3    # "theirValue":Ljava/lang/String;
    :goto_0
    return v4

    .line 926
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "ourValue":Ljava/lang/String;
    .restart local v3    # "theirValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 930
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ourValue":Ljava/lang/String;
    .end local v3    # "theirValue":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 889
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    .line 890
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 898
    const-string v2, "{ "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    const-string v2, "IdColumn="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    iget-object v2, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    const-string v2, ", FromTemplate="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    iget-boolean v2, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mFromTemplate:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 903
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 905
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 910
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v2, "}"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 967
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 968
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 969
    return-void
.end method
