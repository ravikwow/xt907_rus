.class Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$7;
.super Ljava/lang/Object;
.source "BuaMemoryPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    .line 237
    iput-object p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$7;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$7;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 240
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$7;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    const/16 v1, 0xa

    const/4 v2, 0x0

    # invokes: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->sendBuaRequest(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$100(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;ILjava/lang/Object;)V

    .line 241
    const/4 v0, 0x1

    return v0
.end method
