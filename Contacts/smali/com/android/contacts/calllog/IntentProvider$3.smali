.class final Lcom/android/contacts/calllog/IntentProvider$3;
.super Lcom/android/contacts/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/android/contacts/calllog/CallLogAdapter;IJI)Lcom/android/contacts/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/android/contacts/calllog/CallLogAdapter;

.field final synthetic val$groupSize:I

.field final synthetic val$id:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogAdapter;IIJ)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$adapter:Lcom/android/contacts/calllog/CallLogAdapter;

    iput p2, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$position:I

    iput p3, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$groupSize:I

    iput-wide p4, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$id:J

    invoke-direct {p0}, Lcom/android/contacts/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$adapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/GroupingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 74
    iget v0, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$position:I

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 75
    const-string v0, "Calling_dbg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallDetailIntentProvider getIntent position:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$position:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogQuery;->isSectionHeader(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    .line 81
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/android/contacts/CallDetailActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const/4 v0, 0x6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    const-string v4, "EXTRA_VOICEMAIL_URI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    :cond_1
    const-string v0, "EXTRA_VOICEMAIL_START_PLAYBACK"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    iget v0, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$groupSize:I

    const/4 v4, 0x1

    if-le v0, v4, :cond_3

    .line 92
    iget v0, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$groupSize:I

    new-array v4, v0, [J

    move v0, v1

    .line 94
    :goto_1
    iget v5, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$groupSize:I

    if-ge v0, v5, :cond_2

    .line 95
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v4, v0

    .line 96
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_2
    const-string v0, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    :goto_2
    move-object v0, v2

    .line 104
    goto :goto_0

    .line 101
    :cond_3
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$id:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2
.end method
