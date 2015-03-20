.class Lcom/motorola/contacts/genie/GenieController$GenieDataBaseUpdateTask;
.super Landroid/os/AsyncTask;
.source "GenieController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/genie/GenieController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenieDataBaseUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/genie/GenieController;


# direct methods
.method private constructor <init>(Lcom/motorola/contacts/genie/GenieController;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/motorola/contacts/genie/GenieController$GenieDataBaseUpdateTask;->this$0:Lcom/motorola/contacts/genie/GenieController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/contacts/genie/GenieController;Lcom/motorola/contacts/genie/GenieController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/contacts/genie/GenieController;
    .param p2, "x1"    # Lcom/motorola/contacts/genie/GenieController$1;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/motorola/contacts/genie/GenieController$GenieDataBaseUpdateTask;-><init>(Lcom/motorola/contacts/genie/GenieController;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 314
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/contacts/genie/GenieController$GenieDataBaseUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 318
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 319
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "quest_state"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v2, "last_changed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v1, "where":Ljava/lang/StringBuilder;
    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v2, p0, Lcom/motorola/contacts/genie/GenieController$GenieDataBaseUpdateTask;->this$0:Lcom/motorola/contacts/genie/GenieController;

    # getter for: Lcom/motorola/contacts/genie/GenieController;->mCurrentGMQuestId:I
    invoke-static {v2}, Lcom/motorola/contacts/genie/GenieController;->access$600(Lcom/motorola/contacts/genie/GenieController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    iget-object v2, p0, Lcom/motorola/contacts/genie/GenieController$GenieDataBaseUpdateTask;->this$0:Lcom/motorola/contacts/genie/GenieController;

    # getter for: Lcom/motorola/contacts/genie/GenieController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/contacts/genie/GenieController;->access$700(Lcom/motorola/contacts/genie/GenieController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/motorola/contacts/genie/GenieUtils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 330
    iget-object v2, p0, Lcom/motorola/contacts/genie/GenieController$GenieDataBaseUpdateTask;->this$0:Lcom/motorola/contacts/genie/GenieController;

    # invokes: Lcom/motorola/contacts/genie/GenieController;->sendCheckinDBIntent()V
    invoke-static {v2}, Lcom/motorola/contacts/genie/GenieController;->access$800(Lcom/motorola/contacts/genie/GenieController;)V

    .line 331
    return-object v5
.end method
