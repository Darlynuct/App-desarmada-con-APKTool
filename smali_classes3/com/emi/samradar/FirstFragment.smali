.class public Lcom/emi/samradar/FirstFragment;
.super Landroidx/fragment/app/Fragment;
.source "FirstFragment.java"


# instance fields
.field private binding:Lcom/emi/samradar/databinding/FragmentFirstBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 26
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/emi/samradar/databinding/FragmentFirstBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/emi/samradar/databinding/FragmentFirstBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/emi/samradar/FirstFragment;->binding:Lcom/emi/samradar/databinding/FragmentFirstBinding;

    .line 27
    invoke-virtual {v0}, Lcom/emi/samradar/databinding/FragmentFirstBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/emi/samradar/FirstFragment;->binding:Lcom/emi/samradar/databinding/FragmentFirstBinding;

    .line 46
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/emi/samradar/FirstFragment;->binding:Lcom/emi/samradar/databinding/FragmentFirstBinding;

    iget-object v0, v0, Lcom/emi/samradar/databinding/FragmentFirstBinding;->buttonFirst:Landroid/widget/Button;

    new-instance v1, Lcom/emi/samradar/FirstFragment$1;

    invoke-direct {v1, p0}, Lcom/emi/samradar/FirstFragment$1;-><init>(Lcom/emi/samradar/FirstFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method
