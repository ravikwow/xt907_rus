.class Lcom/android/deskclock/AlarmClock$1;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock;I)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$1;->this$0:Lcom/android/deskclock/AlarmClock;

    iput p2, p0, Lcom/android/deskclock/AlarmClock$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$1;->this$0:Lcom/android/deskclock/AlarmClock;

    iget v1, p0, Lcom/android/deskclock/AlarmClock$1;->val$id:I

    invoke-static {v0, v1}, Lcom/android/deskclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 158
    return-void
.end method
