.class public Lcom/android/contacts/calllog/CallLogGroupBuilder;
.super Ljava/lang/Object;
.source "CallLogGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;
    }
.end annotation


# instance fields
.field private final mGroupCreator:Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;)V
    .locals 0
    .param p1, "groupCreator"    # Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;

    .line 41
    return-void
.end method

.method private addGroup(II)V
    .locals 2
    .param p1, "cursorPosition"    # I
    .param p2, "size"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(IIZ)V

    .line 120
    return-void
.end method


# virtual methods
.method public addGroups(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x4

    const/4 v8, 0x1

    .line 55
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 56
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v2, 0x1

    .line 61
    .local v2, "currentGroupSize":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "firstNumber":Ljava/lang/String;
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 66
    .local v4, "firstCallType":I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 68
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "currentNumber":Ljava/lang/String;
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 70
    .local v0, "callType":I
    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 73
    .local v6, "sameNumber":Z
    invoke-static {p1}, Lcom/android/contacts/calllog/CallLogQuery;->isSectionHeader(Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 75
    const/4 v7, 0x0

    .line 88
    .local v7, "shouldGroup":Z
    :goto_2
    if-eqz v7, :cond_7

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    .end local v7    # "shouldGroup":Z
    :cond_2
    if-nez v6, :cond_3

    .line 78
    const/4 v7, 0x0

    .restart local v7    # "shouldGroup":Z
    goto :goto_2

    .line 79
    .end local v7    # "shouldGroup":Z
    :cond_3
    if-ne v4, v10, :cond_4

    .line 81
    const/4 v7, 0x0

    .restart local v7    # "shouldGroup":Z
    goto :goto_2

    .line 84
    .end local v7    # "shouldGroup":Z
    :cond_4
    if-eq v0, v8, :cond_5

    const/4 v9, 0x2

    if-eq v0, v9, :cond_5

    const/4 v9, 0x3

    if-ne v0, v9, :cond_6

    :cond_5
    move v7, v8

    .restart local v7    # "shouldGroup":Z
    :goto_3
    goto :goto_2

    .end local v7    # "shouldGroup":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 95
    .restart local v7    # "shouldGroup":Z
    :cond_7
    if-le v2, v8, :cond_8

    .line 96
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-direct {p0, v9, v2}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->addGroup(II)V

    .line 99
    :cond_8
    const/4 v2, 0x1

    .line 101
    move-object v5, v3

    .line 102
    move v4, v0

    goto :goto_1

    .line 106
    .end local v0    # "callType":I
    .end local v3    # "currentNumber":Ljava/lang/String;
    .end local v6    # "sameNumber":Z
    .end local v7    # "shouldGroup":Z
    :cond_9
    if-le v2, v8, :cond_0

    .line 107
    sub-int v8, v1, v2

    invoke-direct {p0, v8, v2}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->addGroup(II)V

    goto :goto_0
.end method

.method compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x40

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 133
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    if-ne p1, p2, :cond_2

    .line 157
    :cond_1
    :goto_0
    return v6

    :cond_2
    move v6, v7

    .line 133
    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 138
    .local v0, "index1":I
    if-eq v0, v8, :cond_5

    .line 139
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "userinfo1":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "rest1":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 149
    .local v1, "index2":I
    if-eq v1, v8, :cond_6

    .line 150
    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "userinfo2":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "rest2":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_4
    move v6, v7

    goto :goto_0

    .line 142
    .end local v1    # "index2":I
    .end local v2    # "rest1":Ljava/lang/String;
    .end local v3    # "rest2":Ljava/lang/String;
    .end local v4    # "userinfo1":Ljava/lang/String;
    .end local v5    # "userinfo2":Ljava/lang/String;
    :cond_5
    move-object v4, p1

    .line 143
    .restart local v4    # "userinfo1":Ljava/lang/String;
    const-string v2, ""

    .restart local v2    # "rest1":Ljava/lang/String;
    goto :goto_1

    .line 153
    .restart local v1    # "index2":I
    :cond_6
    move-object v5, p2

    .line 154
    .restart local v5    # "userinfo2":Ljava/lang/String;
    const-string v3, ""

    .restart local v3    # "rest2":Ljava/lang/String;
    goto :goto_2
.end method

.method equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
