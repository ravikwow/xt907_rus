.class final Lcom/android/mms/transaction/MOSmsManager$3;
.super Ljava/lang/Object;
.source "MOSmsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MOSmsManager;->removeOrphanThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 780
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 784
    # getter for: Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MOSmsManager;->access$000()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/mms/transaction/MOSmsManager;->access$100()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "not thread_id in (select _id from threads)"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 786
    return-void
.end method
