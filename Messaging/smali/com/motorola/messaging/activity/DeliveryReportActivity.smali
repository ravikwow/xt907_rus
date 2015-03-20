.class public Lcom/motorola/messaging/activity/DeliveryReportActivity;
.super Landroid/app/Activity;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;,
        Lcom/motorola/messaging/activity/DeliveryReportActivity$DeliveryReportAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private mMessageId:J

.field private mMessageType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    sput-boolean v0, Lcom/motorola/messaging/activity/DeliveryReportActivity;->DEBUG:Z

    .line 59
    sget-boolean v1, Lcom/motorola/messaging/activity/DeliveryReportActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/activity/DeliveryReportActivity;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 189
    return-void
.end method

.method private getListAdapter()Lcom/motorola/messaging/activity/DeliveryReportActivity$DeliveryReportAdapter;
    .locals 5

    .prologue
    .line 116
    iget-object v1, p0, Lcom/motorola/messaging/activity/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    iget-wide v2, p0, Lcom/motorola/messaging/activity/DeliveryReportActivity;->mMessageId:J

    invoke-static {p0, v1, v2, v3}, Lcom/motorola/messaging/composer/StatusReportUtils;->getDeliveryReportsForMsg(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;>;"
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .restart local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;>;"
    new-instance v1, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;

    const-string v2, ""

    const/4 v3, 0x0

    const v4, 0x7f0b00ce

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v1, "DeliveryReptActvy"

    const-string v2, "cursor == null"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    new-instance v1, Lcom/motorola/messaging/activity/DeliveryReportActivity$DeliveryReportAdapter;

    invoke-direct {v1, p0, v0}, Lcom/motorola/messaging/activity/DeliveryReportActivity$DeliveryReportAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget-boolean v1, Lcom/motorola/messaging/activity/DeliveryReportActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "DeliveryReptActvy"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    if-nez p1, :cond_1

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "message_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/messaging/activity/DeliveryReportActivity;->mMessageId:J

    .line 76
    const-string v1, "message_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/activity/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 79
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b00cd

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-direct {p0}, Lcom/motorola/messaging/activity/DeliveryReportActivity;->getListAdapter()Lcom/motorola/messaging/activity/DeliveryReportActivity$DeliveryReportAdapter;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 105
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v2, Lcom/motorola/messaging/activity/DeliveryReportActivity$1;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/DeliveryReportActivity$1;-><init>(Lcom/motorola/messaging/activity/DeliveryReportActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 112
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_0
    return-object v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string v0, "message_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/messaging/activity/DeliveryReportActivity;->mMessageId:J

    .line 86
    const-string v0, "message_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    .line 88
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    const-string v0, "message_id"

    iget-wide v1, p0, Lcom/motorola/messaging/activity/DeliveryReportActivity;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 94
    const-string v0, "message_type"

    iget-object v1, p0, Lcom/motorola/messaging/activity/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method
