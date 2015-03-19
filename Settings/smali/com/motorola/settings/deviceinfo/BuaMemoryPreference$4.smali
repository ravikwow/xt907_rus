.class Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$4;
.super Ljava/lang/Object;
.source "BuaMemoryPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;


# direct methods
.method constructor <init>(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$4;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$4;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaCallBackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$900(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$4;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mUpdateSpaceTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$800(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$4;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    const/4 v1, 0x2

    # invokes: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->startBuaSelfProvision(I)V
    invoke-static {v0, v1}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$1300(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;I)V

    .line 209
    return-void
.end method
