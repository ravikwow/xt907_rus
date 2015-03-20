.class Lcom/android/calendar/ics/IcsService$1;
.super Ljava/lang/Object;
.source "IcsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ics/IcsService;->showToast(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ics/IcsService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$messageId:I


# direct methods
.method constructor <init>(Lcom/android/calendar/ics/IcsService;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/calendar/ics/IcsService$1;->this$0:Lcom/android/calendar/ics/IcsService;

    iput-object p2, p0, Lcom/android/calendar/ics/IcsService$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/calendar/ics/IcsService$1;->val$messageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/ics/IcsService$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/android/calendar/ics/IcsService$1;->val$messageId:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "IcsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find resource toast ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/ics/IcsService$1;->val$messageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
