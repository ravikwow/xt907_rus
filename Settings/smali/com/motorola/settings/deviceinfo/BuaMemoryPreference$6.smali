.class Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$6;
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
    .line 227
    iput-object p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$6;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$6;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    const/4 v1, 0x1

    # invokes: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->startBuaSelfProvision(I)V
    invoke-static {v0, v1}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$1300(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;I)V

    .line 230
    return-void
.end method
