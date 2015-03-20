.class Lcom/android/deskclock/AlarmClock$5;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock;->updateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$5;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$5;->this$0:Lcom/android/deskclock/AlarmClock;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$5;->this$0:Lcom/android/deskclock/AlarmClock;

    const-class v3, Lcom/android/deskclock/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 242
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$5;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 243
    return-void
.end method
