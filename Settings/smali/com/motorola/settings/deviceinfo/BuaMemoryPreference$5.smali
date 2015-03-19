.class Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$5;
.super Ljava/lang/Object;
.source "BuaMemoryPreference.java"

# interfaces
.implements Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference$OnBindViewListener;


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
    .line 211
    iput-object p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$5;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$5;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;
    invoke-static {v1}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$500(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->getButton()Landroid/widget/Button;

    move-result-object v0

    .line 214
    .local v0, "upgradeButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$5;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # getter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaAvailablePercentage:F
    invoke-static {v1}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$600(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)F

    move-result v1

    const v2, 0x3e4ccccd

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gtz v1, :cond_1

    .line 216
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
