.class public Lcom/motorola/contacts/util/MEContacts;
.super Ljava/lang/Object;
.source "MEContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/util/MEContacts$MEContactsSyncHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static MOST_BIG_GROUP_LOG_SIZE:I

.field public static mLaunched:Z

.field private static mMEContacts:Lcom/motorola/contacts/util/MEContacts;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWorkThread:Landroid/os/HandlerThread;

.field private mWorker:Lcom/motorola/contacts/util/MEContacts$MEContactsSyncHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->DBG:Z

    sput-boolean v0, Lcom/motorola/contacts/util/MEContacts;->DBG:Z

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/contacts/util/MEContacts;->mLaunched:Z

    .line 65
    const/16 v0, 0x200

    sput v0, Lcom/motorola/contacts/util/MEContacts;->MOST_BIG_GROUP_LOG_SIZE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/motorola/contacts/util/MEContacts;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MEContactsLogger"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/motorola/contacts/util/MEContacts;->mWorkThread:Landroid/os/HandlerThread;

    .line 105
    iget-object v0, p0, Lcom/motorola/contacts/util/MEContacts;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 106
    new-instance v0, Lcom/motorola/contacts/util/MEContacts$MEContactsSyncHandler;

    iget-object v1, p0, Lcom/motorola/contacts/util/MEContacts;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/contacts/util/MEContacts$MEContactsSyncHandler;-><init>(Lcom/motorola/contacts/util/MEContacts;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/contacts/util/MEContacts;->mWorker:Lcom/motorola/contacts/util/MEContacts$MEContactsSyncHandler;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/contacts/util/MEContacts;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/util/MEContacts;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/contacts/util/MEContacts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static buildGroupMembersString([JLcom/motorola/data/event/api/Event;)Ljava/lang/String;
    .locals 8
    .param p0, "contactIds"    # [J
    .param p1, "event"    # Lcom/motorola/data/event/api/Event;

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/motorola/data/event/api/Event;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 183
    .local v2, "eventSb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    sget v5, Lcom/motorola/contacts/util/MEContacts;->MOST_BIG_GROUP_LOG_SIZE:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 184
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v1, ";"

    .line 185
    .local v1, "SEP":Ljava/lang/String;
    const-string v0, "="

    .line 186
    .local v0, "EQUAL":Ljava/lang/String;
    array-length v5, p0

    if-lez v5, :cond_0

    .line 187
    const/4 v5, 0x0

    aget-wide v5, p0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_0

    .line 189
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "contact id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, p0, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getSingleInstance(Landroid/content/Context;)Lcom/motorola/contacts/util/MEContacts;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    sget-object v0, Lcom/motorola/contacts/util/MEContacts;->mMEContacts:Lcom/motorola/contacts/util/MEContacts;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/motorola/contacts/util/MEContacts;

    invoke-direct {v0, p0}, Lcom/motorola/contacts/util/MEContacts;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/contacts/util/MEContacts;->mMEContacts:Lcom/motorola/contacts/util/MEContacts;

    .line 113
    :cond_0
    sget-object v0, Lcom/motorola/contacts/util/MEContacts;->mMEContacts:Lcom/motorola/contacts/util/MEContacts;

    return-object v0
.end method

.method public static inited(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 125
    sget-boolean v1, Lcom/motorola/contacts/util/MEContacts;->mLaunched:Z

    if-nez v1, :cond_0

    .line 126
    sput-boolean v0, Lcom/motorola/contacts/util/MEContacts;->mLaunched:Z

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {p0}, Lcom/motorola/contacts/util/MEContacts;->getSingleInstance(Landroid/content/Context;)Lcom/motorola/contacts/util/MEContacts;

    move-result-object v1

    sput-object v1, Lcom/motorola/contacts/util/MEContacts;->mMEContacts:Lcom/motorola/contacts/util/MEContacts;

    .line 131
    :cond_0
    sget-object v1, Lcom/motorola/contacts/util/MEContacts;->mMEContacts:Lcom/motorola/contacts/util/MEContacts;

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string v0, "MEContacts"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method private static logEvent(Lcom/motorola/data/event/api/Event;)V
    .locals 3
    .param p0, "event"    # Lcom/motorola/data/event/api/Event;

    .prologue
    .line 117
    sget-object v1, Lcom/motorola/contacts/util/MEContacts;->mMEContacts:Lcom/motorola/contacts/util/MEContacts;

    if-eqz v1, :cond_1

    .line 118
    sget-object v1, Lcom/motorola/contacts/util/MEContacts;->mMEContacts:Lcom/motorola/contacts/util/MEContacts;

    iget-object v1, v1, Lcom/motorola/contacts/util/MEContacts;->mWorker:Lcom/motorola/contacts/util/MEContacts$MEContactsSyncHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, "msg":Landroid/os/Message;
    sget-boolean v1, Lcom/motorola/contacts/util/MEContacts;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMEMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/MEContacts;->log(Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 122
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public static onContactOperation(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "contactId"    # J

    .prologue
    .line 135
    sget-boolean v1, Lcom/motorola/contacts/util/MEContacts;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " <- onContactOperation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",contact id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/MEContacts;->log(Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-static {p0}, Lcom/motorola/contacts/util/MEContacts;->inited(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_CONTACTS_STATS_L2"

    const-string v2, "0.1"

    invoke-direct {v0, v1, p1, v2}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v0, "event":Lcom/motorola/data/event/api/Event;
    const-string v1, "contact id"

    invoke-virtual {v0, v1, p2, p3}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;J)V

    .line 139
    invoke-static {v0}, Lcom/motorola/contacts/util/MEContacts;->logEvent(Lcom/motorola/data/event/api/Event;)V

    .line 143
    .end local v0    # "event":Lcom/motorola/data/event/api/Event;
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    sget-boolean v1, Lcom/motorola/contacts/util/MEContacts;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onContactOperation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/MEContacts;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onGroupMembership(Landroid/content/Context;Ljava/lang/String;J[J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "groupId"    # J
    .param p4, "contactIds"    # [J

    .prologue
    .line 158
    sget-boolean v1, Lcom/motorola/contacts/util/MEContacts;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " <- onGroupMembership: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "group id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/MEContacts;->log(Ljava/lang/String;)V

    .line 159
    :cond_0
    invoke-static {p0}, Lcom/motorola/contacts/util/MEContacts;->inited(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_CONTACTS_STATS_L2"

    const-string v2, "0.1"

    invoke-direct {v0, v1, p1, v2}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v0, "event":Lcom/motorola/data/event/api/Event;
    const-string v1, "group id"

    invoke-virtual {v0, v1, p2, p3}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;J)V

    .line 162
    const-string v1, "contact id"

    invoke-static {p4, v0}, Lcom/motorola/contacts/util/MEContacts;->buildGroupMembersString([JLcom/motorola/data/event/api/Event;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v0}, Lcom/motorola/contacts/util/MEContacts;->logEvent(Lcom/motorola/data/event/api/Event;)V

    .line 167
    .end local v0    # "event":Lcom/motorola/data/event/api/Event;
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    sget-boolean v1, Lcom/motorola/contacts/util/MEContacts;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onGroupMembership:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/MEContacts;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onMergeContact(Landroid/content/Context;JJ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactIdFrom"    # J
    .param p3, "contactIdTo"    # J

    .prologue
    .line 146
    sget-boolean v1, Lcom/motorola/contacts/util/MEContacts;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " <- onMergeContact -> Contact Id from is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Contact ID To is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/MEContacts;->log(Ljava/lang/String;)V

    .line 147
    :cond_0
    invoke-static {p0}, Lcom/motorola/contacts/util/MEContacts;->inited(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_CONTACTS_STATS_L2"

    const-string v2, "CONTACT_CNT_MRG"

    const-string v3, "0.1"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v0, "event":Lcom/motorola/data/event/api/Event;
    const-string v1, "from"

    invoke-virtual {v0, v1, p1, p2}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;J)V

    .line 150
    const-string v1, "to"

    invoke-virtual {v0, v1, p3, p4}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;J)V

    .line 151
    invoke-static {v0}, Lcom/motorola/contacts/util/MEContacts;->logEvent(Lcom/motorola/data/event/api/Event;)V

    .line 155
    .end local v0    # "event":Lcom/motorola/data/event/api/Event;
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    sget-boolean v1, Lcom/motorola/contacts/util/MEContacts;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, " onMergeContact:"

    invoke-static {v1}, Lcom/motorola/contacts/util/MEContacts;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
