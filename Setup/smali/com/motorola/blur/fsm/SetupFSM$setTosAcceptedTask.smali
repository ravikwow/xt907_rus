.class Lcom/motorola/blur/fsm/SetupFSM$setTosAcceptedTask;
.super Landroid/os/AsyncTask;
.source "SetupFSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setTosAcceptedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/motorola/blur/fsm/SetupFSM;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/fsm/SetupFSM;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/motorola/blur/fsm/SetupFSM$setTosAcceptedTask;->this$0:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 819
    iput-object p2, p0, Lcom/motorola/blur/fsm/SetupFSM$setTosAcceptedTask;->mContext:Landroid/content/Context;

    .line 820
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 815
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/fsm/SetupFSM$setTosAcceptedTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 5
    .param p1, "values"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 824
    iget-object v2, p0, Lcom/motorola/blur/fsm/SetupFSM$setTosAcceptedTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 826
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 827
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "TOS_ACCEPTED"

    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 828
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 829
    const/4 v2, 0x0

    return-object v2
.end method
