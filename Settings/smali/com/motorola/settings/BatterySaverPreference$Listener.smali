.class Lcom/motorola/settings/BatterySaverPreference$Listener;
.super Ljava/lang/Object;
.source "BatterySaverPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/settings/BatterySaverPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/settings/BatterySaverPreference;


# direct methods
.method private constructor <init>(Lcom/motorola/settings/BatterySaverPreference;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/motorola/settings/BatterySaverPreference$Listener;->this$0:Lcom/motorola/settings/BatterySaverPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/settings/BatterySaverPreference;Lcom/motorola/settings/BatterySaverPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/settings/BatterySaverPreference;
    .param p2, "x1"    # Lcom/motorola/settings/BatterySaverPreference$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/settings/BatterySaverPreference$Listener;-><init>(Lcom/motorola/settings/BatterySaverPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/motorola/settings/BatterySaverPreference$Listener;->this$0:Lcom/motorola/settings/BatterySaverPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/motorola/settings/BatterySaverPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/motorola/settings/BatterySaverPreference;->access$100(Lcom/motorola/settings/BatterySaverPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 87
    :goto_1
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/motorola/settings/BatterySaverPreference$Listener;->this$0:Lcom/motorola/settings/BatterySaverPreference;

    invoke-virtual {v0, p2}, Lcom/motorola/settings/BatterySaverPreference;->setChecked(Z)V

    goto :goto_1
.end method
