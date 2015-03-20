.class Lcom/android/deskclock/SetAlarm$6;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/SetAlarm;->deleteAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/android/deskclock/SetAlarm;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/deskclock/SetAlarm$6;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$6;->this$0:Lcom/android/deskclock/SetAlarm;

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$6;->this$0:Lcom/android/deskclock/SetAlarm;

    # getter for: Lcom/android/deskclock/SetAlarm;->mId:I
    invoke-static {v1}, Lcom/android/deskclock/SetAlarm;->access$500(Lcom/android/deskclock/SetAlarm;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/deskclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 351
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$6;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 352
    return-void
.end method
